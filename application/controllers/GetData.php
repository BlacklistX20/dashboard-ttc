<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  @property TabelModel $TabelModel 
 */

use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;

class GetData extends CI_Controller
{

   public function __construct()
   {
      parent::__construct();

      $this->load->model('TabelModel');
      $this->load->dbutil();
      $this->load->helper('download');
   }

   public function main()
   {
      $data['avg'] = $this->TabelModel->getPueAvg()->result('array');
      $data['min'] = $this->TabelModel->getPueMinMax('ASC')->result('array');
      $data['max'] = $this->TabelModel->getPueMinMax('DESC')->result('array');
      $data['pue'] = $this->TabelModel->getElectricData('1')->result('array');
      $data['lvmdp'] = $this->TabelModel->getElectricData('2')->result('array');
      $data['recti'] = $this->TabelModel->getElectricData('4')->result('array');
      $data['ups'] = $this->TabelModel->getElectricData('5')->result('array');

      $today = strtotime("today");
      $startdate = strtotime("-1 weeks", $today);
      $enddate = strtotime("yesterday");
      $first = date("Y-m-d", $startdate);
      $last = date("Y-m-d", $enddate);
      $data['avgPueWeekly'] = $this->TabelModel->getAvgPueWeekly($first, $last)->result('array');

      function avg(...$numbers)
      {
         $sum = 0;
         foreach ($numbers as $n) {
            $sum += $n;
         }
         $avg = $sum / count($numbers);
         return round($avg, 2);
      }

      $batt4 = $this->TabelModel->getTempData('battery4')->result('array');
      $recti4 = $this->TabelModel->getTempData('recti4')->result('array');
      $bss = $this->TabelModel->getTempData('bss')->result('array');
      $inter = $this->TabelModel->getTempData('inter')->result('array');
      $trans = $this->TabelModel->getTempData('trans')->result('array');
      $lt4Temp = avg($batt4[0]['t_avg'], $recti4[0]['t_avg'], $bss[0]['t_avg'], $inter[0]['t_avg'], $trans[0]['t_avg']);
      $lt4Hum = avg($batt4[0]['h_avg'], $recti4[0]['h_avg'], $bss[0]['h_avg'], $inter[0]['h_avg'], $trans[0]['h_avg']);
      $data['temp4'] = [
         'tgl' => $batt4[0]['updated_at'],
         'temp' => $lt4Temp,
         'hum' => $lt4Hum
      ];

      // print_r();
      // echo $lt4;
      echo json_encode($data);
   }

   public function mainChart()
   {
      $data['morning'] = $this->TabelModel->getPueMorning()->result_array();
      $data['noon'] = $this->TabelModel->getPueNoon()->result_array();
      $data['night'] = $this->TabelModel->getPueNight()->result_array();

      $today = strtotime("today");
      $startdate = strtotime("-1 weeks", $today);
      $enddate = strtotime("yesterday");
      $first = date("Y-m-d", $startdate);
      $last = date("Y-m-d", $enddate);

      $pueWeek = $this->TabelModel->getPueByDate($first, $last)->result_array();

      function filterFirstDataPoints($data)
      {
         $filteredData = [];

         // Array to keep track of the first data point for each minute range 0-30 in each hour
         $firstDataPoints = [];

         foreach ($data as $entry) {
            $date = $entry['date'];
            $time = $entry['time'];
            $minute = (int) date('i', strtotime($time));
            $hour = date('H', strtotime($time));

            // Only consider the minute range 0-30
            if ($minute < 30) {
               // Use the date and hour as a unique key to store the first data point for the minute range 0-30
               $key = $date . ' ' . $hour;

               if (!isset($firstDataPoints[$key])) {
                  $firstDataPoints[$key] = $entry;
               }
            }
         }

         // Convert the associative array to a sequential array
         $filteredData = array_values($firstDataPoints);

         // Sort data by date and time
         usort($filteredData, function ($a, $b) {
            return strcmp($a['date'] . ' ' . $a['time'], $b['date'] . ' ' . $b['time']);
         });

         return $filteredData;
      }

      $data['pueWeek'] = filterFirstDataPoints($pueWeek);

      // echo $data;
      echo json_encode($data);
   }

   public function recti()
   {
      $data['p205'] = $this->TabelModel->getElectric('p205');
      $data['p236'] = $this->TabelModel->getElectric('p236');
      $data['p305'] = $this->TabelModel->getElectric('p305');
      $data['p310'] = $this->TabelModel->getElectric('p310');
      $data['p429'] = $this->TabelModel->getElectric('p429');

      // print_r($data);
      echo json_encode($data);
   }

   public function ups()
   {
      $data['ups202'] = $this->TabelModel->getElectric('ups202');
      $data['ups203'] = $this->TabelModel->getElectric('ups203');
      $data['ups301'] = $this->TabelModel->getElectric('ups301');
      $data['ups302'] = $this->TabelModel->getElectric('ups302');
      $data['ups501'] = $this->TabelModel->getElectric('ups501');
      $data['ups502'] = $this->TabelModel->getElectric('ups502');

      // print_r($data);
      echo json_encode($data);
   }

   public function electricRT()
   {
      $recti = $this->TabelModel->getElectricRT('recti')->result_array();
      $ups = $this->TabelModel->getElectricRT('ups')->result_array();

      function separateDateTime($data)
      {
         foreach ($data as &$item) {
            $item['date'] = date('d-m-y', strtotime($item['tgl']));
            $item['time'] = date('H:i', strtotime($item['tgl']));
            unset($item['tgl']); // Remove the old 'tgl' key
         }
         ;

         return $data;
      }
      ;

      $data['recti'] = separateDateTime($recti);
      $data['ups'] = separateDateTime($ups);

      echo json_encode($data);
   }

   public function lt4()
   {
      $data['batt4'] = $this->TabelModel->getSuhu('battery4');
      $data['recti4'] = $this->TabelModel->getSuhu('recti4');
      $data['bss'] = $this->TabelModel->getSuhu('bss');
      $data['inter'] = $this->TabelModel->getSuhu('inter');
      $data['trans'] = $this->TabelModel->getSuhu('trans');

      function sum(...$numbers)
      {
         $sum = 0;
         foreach ($numbers as $n) {
            $sum += $n;
         }
         $avg = $sum / count($numbers);
         return (float) $avg;
      }

      $batt4Suhu = sum($data['batt4']['s1'], $data['batt4']['s2']);
      $batt4Kelem = sum($data['batt4']['k1'], $data['batt4']['k2']);
      $data['batt4T'] = ["st" => $batt4Suhu, "kt" => $batt4Kelem];

      $recti4Suhu = sum($data['recti4']['s1'], $data['recti4']['s2'], $data['recti4']['s3']);
      $recti4Kelem = sum($data['recti4']['k1'], $data['recti4']['k2'], $data['recti4']['k3']);
      $data['recti4T'] = ["st" => $recti4Suhu, "kt" => $recti4Kelem];

      $bssSuhu = sum($data['bss']['s1'], $data['bss']['s2'], $data['bss']['s3'], $data['bss']['s4']);
      $bssKelem = sum($data['bss']['k1'], $data['bss']['k2'], $data['bss']['k3'], $data['bss']['k4']);
      $data['bssT'] = ["st" => $bssSuhu, "kt" => $bssKelem];

      $interSuhu = sum($data['inter']['s1'], $data['inter']['s2'], $data['inter']['s3'], $data['inter']['s4']);
      $interKelem = sum($data['inter']['k1'], $data['inter']['k2'], $data['inter']['k3'], $data['inter']['k4']);
      $data['interT'] = ["st" => $interSuhu, "kt" => $interKelem];

      $transSuhu = sum($data['trans']['s1'], $data['trans']['s2'], $data['trans']['s4'], $data['trans']['s5'], $data['trans']['s6']);
      $transKelem = sum($data['trans']['k1'], $data['trans']['k2'], $data['trans']['k4'], $data['trans']['k5'], $data['trans']['k6']);
      $data['transT'] = ["st" => $transSuhu, "kt" => $transKelem];

      // print_r($data['recti4']);
      echo json_encode($data);
   }

   public function tangki()
   {
      $data = $this->TabelModel->getFuel('daily_tank');

      echo json_encode($data);
   }

   public function potencyElById($id)
   {
      $data = $this->TabelModel->getPotencyById("id = $id", 'electricity')->row_array();

      echo json_encode($data);
   }

   public function potencyColById($id)
   {
      $data = $this->TabelModel->getPotencyById("id = $id", 'cooling')->row_array();

      echo json_encode($data);
   }

   public function potencyFireById($id)
   {
      $data = $this->TabelModel->getPotencyById("id = $id", 'fire')->row_array();

      echo json_encode($data);
   }

   public function potencyUpsById($id)
   {
      $data = $this->TabelModel->getPotencyById("id = $id", 'ups')->row_array();

      echo json_encode($data);
   }

   public function potencyRectById($id)
   {
      $data = $this->TabelModel->getPotencyById("id = $id", 'recti')->row_array();

      echo json_encode($data);
   }

   public function potencyPeneById($id)
   {
      $data = $this->TabelModel->getPotencyById("id = $id", 'penerangan')->row_array();

      echo json_encode($data);
   }

   public function potencyWarnById($id)
   {
      $data = $this->TabelModel->getPotencyById("id = $id", 'warning')->row_array();

      echo json_encode($data);
   }

   public function potencySuppById($id)
   {
      $data = $this->TabelModel->getPotencyById("id = $id", 'support')->row_array();

      echo json_encode($data);
   }

   public function electricChartHour()
   {
      $data['pue'] = $this->TabelModel->getDataElectric('pue', 12)->result_array();
      $data['lvmdp'] = $this->TabelModel->getDataElectric('lvmdp', 12)->result_array();
      $data['it'] = $this->TabelModel->getDataElectric('it', 12)->result_array();
      $data['recti'] = $this->TabelModel->getDataElectric('recti', 12)->result_array();
      $data['ups'] = $this->TabelModel->getDataElectric('ups', 12)->result_array();
      $data['p205'] = $this->TabelModel->getDataElectric('p205', 12)->result_array();
      $data['p236'] = $this->TabelModel->getDataElectric('p236', 12)->result_array();
      $data['p305'] = $this->TabelModel->getDataElectric('p305', 12)->result_array();
      $data['p310'] = $this->TabelModel->getDataElectric('p310', 12)->result_array();
      $data['p429'] = $this->TabelModel->getDataElectric('p429', 12)->result_array();
      $data['ups202'] = $this->TabelModel->getDataElectric('ups202', 12)->result_array();
      $data['ups203'] = $this->TabelModel->getDataElectric('ups203', 12)->result_array();
      $data['ups301'] = $this->TabelModel->getDataElectric('ups301', 12)->result_array();
      $data['ups302'] = $this->TabelModel->getDataElectric('ups302', 12)->result_array();
      $data['ups501'] = $this->TabelModel->getDataElectric('ups501', 12)->result_array();
      $data['ups502'] = $this->TabelModel->getDataElectric('ups502', 12)->result_array();

      echo json_encode($data);
   }

   public function electricChartDay()
   {
      $data['pue'] = $this->TabelModel->getDataElectric('pue', 288)->result_array();
      $data['lvmdp'] = $this->TabelModel->getDataElectric('lvmdp', 288)->result_array();
      $data['it'] = $this->TabelModel->getDataElectric('it', 288)->result_array();
      $data['recti'] = $this->TabelModel->getDataElectric('recti', 288)->result_array();
      $data['ups'] = $this->TabelModel->getDataElectric('ups', 288)->result_array();
      $data['p205'] = $this->TabelModel->getDataElectric('p205', 288)->result_array();
      $data['p236'] = $this->TabelModel->getDataElectric('p236', 288)->result_array();
      $data['p305'] = $this->TabelModel->getDataElectric('p305', 288)->result_array();
      $data['p310'] = $this->TabelModel->getDataElectric('p310', 288)->result_array();
      $data['p429'] = $this->TabelModel->getDataElectric('p429', 288)->result_array();
      $data['ups202'] = $this->TabelModel->getDataElectric('ups202', 288)->result_array();
      $data['ups203'] = $this->TabelModel->getDataElectric('ups203', 288)->result_array();
      $data['ups301'] = $this->TabelModel->getDataElectric('ups301', 288)->result_array();
      $data['ups302'] = $this->TabelModel->getDataElectric('ups302', 288)->result_array();
      $data['ups501'] = $this->TabelModel->getDataElectric('ups501', 288)->result_array();
      $data['ups502'] = $this->TabelModel->getDataElectric('ups502', 288)->result_array();

      echo json_encode($data);
   }

   public function electricChartWeek()
   {
      $data['pue'] = $this->TabelModel->getDataElectric('pue', 2016)->result_array();
      $data['lvmdp'] = $this->TabelModel->getDataElectric('lvmdp', 2016)->result_array();
      $data['it'] = $this->TabelModel->getDataElectric('it', 2016)->result_array();
      $data['recti'] = $this->TabelModel->getDataElectric('recti', 2016)->result_array();
      $data['ups'] = $this->TabelModel->getDataElectric('ups', 2016)->result_array();
      $data['p205'] = $this->TabelModel->getDataElectric('p205', 2016)->result_array();
      $data['p236'] = $this->TabelModel->getDataElectric('p236', 2016)->result_array();
      $data['p305'] = $this->TabelModel->getDataElectric('p305', 2016)->result_array();
      $data['p310'] = $this->TabelModel->getDataElectric('p310', 2016)->result_array();
      $data['p429'] = $this->TabelModel->getDataElectric('p429', 2016)->result_array();
      $data['ups202'] = $this->TabelModel->getDataElectric('ups202', 2016)->result_array();
      $data['ups203'] = $this->TabelModel->getDataElectric('ups203', 2016)->result_array();
      $data['ups301'] = $this->TabelModel->getDataElectric('ups301', 2016)->result_array();
      $data['ups302'] = $this->TabelModel->getDataElectric('ups302', 2016)->result_array();
      $data['ups501'] = $this->TabelModel->getDataElectric('ups501', 2016)->result_array();
      $data['ups502'] = $this->TabelModel->getDataElectric('ups502', 2016)->result_array();

      echo json_encode($data);
   }

   public function pueChartUpdate()
   {
      $data['pue'] = $this->TabelModel->getUpdatedDataElectric('pue');
      $data['lvmdp'] = $this->TabelModel->getUpdatedDataElectric('lvmdp');
      $data['it'] = $this->TabelModel->getUpdatedDataElectric('it');
      $data['recti'] = $this->TabelModel->getUpdatedDataElectric('recti');
      $data['ups'] = $this->TabelModel->getUpdatedDataElectric('ups');
      $data['p205'] = $this->TabelModel->getUpdatedDataElectric('p205');
      $data['p236'] = $this->TabelModel->getUpdatedDataElectric('p236');
      $data['p305'] = $this->TabelModel->getUpdatedDataElectric('p305');
      $data['p310'] = $this->TabelModel->getUpdatedDataElectric('p310');
      $data['p429'] = $this->TabelModel->getUpdatedDataElectric('p429');
      $data['ups202'] = $this->TabelModel->getUpdatedDataElectric('ups202');
      $data['ups203'] = $this->TabelModel->getUpdatedDataElectric('ups203');
      $data['ups301'] = $this->TabelModel->getUpdatedDataElectric('ups301');
      $data['ups302'] = $this->TabelModel->getUpdatedDataElectric('ups302');
      $data['ups501'] = $this->TabelModel->getUpdatedDataElectric('ups501');
      $data['ups502'] = $this->TabelModel->getUpdatedDataElectric('it');

      echo json_encode($data);
   }

   public function export()
   {
      $start = $this->input->post("datemin");
      $end = $this->input->post("datemax");

      // Query the database
      $data = $this->TabelModel->getPueByDate($start, $end);

      // Generate CSV data from query result
      $delimiter = ",";
      $newline = "\r\n";
      $enclosure = '"';
      $csv_data = $this->dbutil->csv_from_result($data, $delimiter, $newline, $enclosure);

      // Set the file name
      $filename = 'PueWeekly_' . date('Ymd_His') . '.csv';

      // Force download the CSV file
      force_download($filename, $csv_data);

      // print_r($data);
      // var_dump($start);
   }

   function export_excel()
   {
      $start = $this->input->post("datemin");
      $end = $this->input->post("datemax");
      $table = $this->input->post("table");

      /* Data */
      $d = $this->TabelModel->getDataByDate($start, $end, $table)->result_array();

      /* Spreadsheet Init */
      $spreadsheet = new Spreadsheet();
      $sheet = $spreadsheet->getActiveSheet();

      // if ($table == "pue") {
         /* Excel Header */
         $sheet->setCellValue('A1', 'Tanggal');
         $sheet->setCellValue('B1', 'Waktu');
         $sheet->setCellValue('C1', 'PUE');

         /* Excel Data */
         $row_number = 2;
         foreach ($d as $row) {
            $sheet->setCellValue('A' . $row_number, $row['date']);
            $sheet->setCellValue('B' . $row_number, $row['time']);
            $sheet->setCellValue('C' . $row_number, $row['pue']);

            $row_number++;
         }

         /* Excel File Format */
         $writer = new Xlsx($spreadsheet);
         $filename = $table . '_' . date('Ymd_His');

         header('Content-Type: application/vnd.ms-excel');
         header('Content-Disposition: attachment;filename="' . $filename . '.xlsx"');
         header('Cache-Control: max-age=0');

         $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
         $writer->save('php://output');   
      // }
      // /* Excel Header */
      // $sheet->setCellValue('A1', 'Tanggal');
      // $sheet->setCellValue('B1', 'Waktu');
      // $sheet->setCellValue('C1', 'Loads');
      // $sheet->setCellValue('D1', 'Voltage');
      // $sheet->setCellValue('E1', 'Current');
      // $sheet->setCellValue('F1', 'Frequency');

      // /* Excel Data */
      // $row_number = 2;
      // foreach ($d as $row) {
      //    $sheet->setCellValue('A' . $row_number, $row['date']);
      //    $sheet->setCellValue('B' . $row_number, $row['time']);
      //    $sheet->setCellValue('C' . $row_number, $row['loads']);
      //    $sheet->setCellValue('D' . $row_number, $row['voltage']);
      //    $sheet->setCellValue('E' . $row_number, $row['current']);
      //    $sheet->setCellValue('F' . $row_number, $row['frequency']);

      //    $row_number++;
      // }

      // /* Excel File Format */
      // $writer = new Xlsx($spreadsheet);
      // $filename = $table . '_' . date('Ymd_His');

      // header('Content-Type: application/vnd.ms-excel');
      // header('Content-Disposition: attachment;filename="' . $filename . '.xlsx"');
      // header('Cache-Control: max-age=0');

      // $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
      // $writer->save('php://output');
   }

   public function test()
   {
      $today = strtotime("today");
      $startdate = strtotime("-1 weeks", $today);
      $enddate = strtotime("yesterday");
      $first = date("Y-m-d", $startdate);
      $last = date("Y-m-d", $enddate);

      $data = $this->TabelModel->getPueByDate($first, $last)->result_array();

      function findPreviousMonthAveragePue($data)
      {
         // Langkah 1: Ekstrak bulan dan tahun dan simpan dalam array
         $months = [];

         foreach ($data as $entry) {
            $date = new DateTime($entry['tgl']);
            $monthYear = $date->format('Y-m'); // Format sebagai Tahun-Bulan

            // Simpan bulan dan tahun dalam array
            $months[] = $monthYear;
         }

         // Langkah 2: Temukan bulan terbaru
         $lastMonth = max($months);

         // Buat DateTime untuk bulan terbaru dan tambahkan satu bulan
         $lastMonthDate = new DateTime($lastMonth . '-01');
         $lastMonthDate->modify('-1 month');

         // Format bulan sebelumnya
         $previousMonth = $lastMonthDate->format('Y-m');

         // Langkah 3: Filter data untuk bulan sebelumnya
         $previousMonthData = array_filter($data, function ($entry) use ($previousMonth) {
            $date = new DateTime($entry['tgl']);
            $monthYear = $date->format('Y-m');
            return $monthYear === $previousMonth;
         });

         // Langkah 4: Hitung rata-rata pue untuk bulan sebelumnya
         if (count($previousMonthData) === 0) {
            $lastMonthData = array_filter($data, function ($entry) use ($lastMonth) {
               $date = new DateTime($entry['tgl']);
               $monthYear = $date->format('Y-m');
               return $monthYear === $lastMonth;
            });
            $totalPue = array_sum(array_column($lastMonthData, 'pue'));
            $count = count($lastMonthData);
            $averagePue = $totalPue / $count;
            return [
               'average_pue' => round($averagePue, 2),
               'bulan' => $lastMonth
            ];
         }

         $totalPue = array_sum(array_column($previousMonthData, 'pue'));
         $count = count($previousMonthData);
         $averagePue = $totalPue / $count;

         return [
            'average_pue' => round($averagePue, 2),
            'bulan' => $previousMonth
         ];
      }

      // Example data
      // $data = [
      //    ['date' => '2024-07-29', 'time' => '05:01:00', 'pue' => 1.52],
      //    ['date' => '2024-07-29', 'time' => '05:16:00', 'pue' => 1.51],
      //    ['date' => '2024-07-29', 'time' => '05:31:00', 'pue' => 1.49],
      //    ['date' => '2024-07-29', 'time' => '05:46:00', 'pue' => 1.53],
      //    ['date' => '2024-07-29', 'time' => '06:01:00', 'pue' => 1.59],
      //    ['date' => '2024-07-29', 'time' => '06:16:00', 'pue' => 1.52],
      //    ['date' => '2024-07-29', 'time' => '06:31:00', 'pue' => 1.57],
      //    ['date' => '2024-07-29', 'time' => '06:46:00', 'pue' => 1.59],
      //    ['date' => '2024-07-29', 'time' => '07:01:00', 'pue' => 1.56],
      //    ['date' => '2024-07-29', 'time' => '07:31:00', 'pue' => 1.59],
      //    ['date' => '2024-07-29', 'time' => '07:46:00', 'pue' => 1.56],
      //    ['date' => '2024-07-30', 'time' => '05:01:00', 'pue' => 1.52],
      //    ['date' => '2024-07-30', 'time' => '05:16:00', 'pue' => 1.51],
      //    ['date' => '2024-07-30', 'time' => '05:31:00', 'pue' => 1.49],
      //    ['date' => '2024-07-30', 'time' => '05:46:00', 'pue' => 1.53],
      //    ['date' => '2024-07-30', 'time' => '06:01:00', 'pue' => 1.59],
      //    ['date' => '2024-07-30', 'time' => '06:16:00', 'pue' => 1.52],
      //    ['date' => '2024-07-30', 'time' => '06:31:00', 'pue' => 1.57],
      //    ['date' => '2024-07-30', 'time' => '06:46:00', 'pue' => 1.59],
      //    ['date' => '2024-07-30', 'time' => '07:01:00', 'pue' => 1.56],
      //    ['date' => '2024-07-30', 'time' => '07:31:00', 'pue' => 1.59],
      //    ['date' => '2024-07-30', 'time' => '07:46:00', 'pue' => 1.56]
      // ];

      // $filtered = filterFirstDataPoints($data);
      $avg = calculateAveragePUE($data);

      // print_r($data);
      echo $avg;
   }
}
