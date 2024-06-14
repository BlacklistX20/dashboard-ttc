<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  @property TabelModel $TabelModel 
 */

class GetData extends CI_Controller
{

   public function __construct()
   {
      parent::__construct();

      $this->load->model('TabelModel');
   }

   public function main()
   {
      $data['weekly'] = $this->TabelModel->getPueWeekly('pue')->result_array();
      $pue = $this->TabelModel->getPue('pue')->result_array();

      function getLastMonthData($data)
      {
         foreach ($data as &$item) {
            $item['bln'] = date('m', strtotime($item['tgl']));
            // unset($item['tgl']); // Remove the old 'tgl' key
         }
         // Find the highest 'bln' value
         $highestMonth = max(array_column($data, 'bln'));

         // Find the second-highest 'bln' value
         $secondHighestMonth = max(array_diff(array_column($data, 'bln'), [$highestMonth]));

         // Collect items with the second-highest 'bln' value
         $secondHighestMonthData = array_filter($data, function ($item) use ($secondHighestMonth) {
            return $item['bln'] == $secondHighestMonth;
         });

         return $secondHighestMonthData;
      }

      function calculatePropertyAverages($data)
      {
         $averages = array(
            'lvmdp' => 0,
            'recti' => 0,
            'ups' => 0,
            'pagi' => 0,
            'siang' => 0,
            'malam' => 0,
            'average' => 0,
            'bln' => 0
         );

         $count = count($data);

         foreach ($data as $item) {
            foreach ($averages as $key => $value) {
               $averages[$key] += $item[$key];
            }
         }

         foreach ($averages as $key => $value) {
            $averages[$key] /= $count;
         }

         $tgl = $data[($count)-1]['tgl'];

         array_push($averages, $tgl);

         return $averages;
      }

      $month = getLastMonthData($pue);
      // $last = getLastMonthData($month);
      $data['avgLastMonth'] = calculatePropertyAverages($month);

      // print_r($data['avgLastMonth']);
      echo json_encode($data);
   }

   public function electric()
   {
      $data['p205'] = $this->TabelModel->getElectric('p205');
      $data['p236'] = $this->TabelModel->getElectric('p236');
      $data['p305'] = $this->TabelModel->getElectric('p305');
      $data['p310'] = $this->TabelModel->getElectric('p310');
      $data['p429'] = $this->TabelModel->getElectric('p429');
      $data['recti'] = $this->TabelModel->getElectric('recti');

      // print_r($data);
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
         return (float)$avg;
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
      $data = $this->TabelModel->getFuel('harian');

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

   public function pueWeekly()
   {
      $data['pagi'] = $this->TabelModel->getPueWeekly('pagi')->result_array();
      $data['siang'] = $this->TabelModel->getPueWeekly('siang')->result_array();
      $data['malam'] = $this->TabelModel->getPueWeekly('malam')->result_array();

      echo json_encode($data);
   }
}
