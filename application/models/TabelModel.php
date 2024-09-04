<?php

class TabelModel extends CI_Model
{

   public function getElectric($table)
   {
      $electric = $this->load->database('electric', TRUE);

      return $electric->get($table)->last_row('array');
   }

   public function getElectricRT($table)
   {
      $electric = $this->load->database('electric', TRUE);

      return $electric->order_by('tgl', 'DESC')->limit(20)->get($table);
   }

   public function getSuhu($table)
   {
      return $this->db->get($table)->last_row('array');
   }

   public function getPotency($table)
   {
      $potency = $this->load->database('potensi', TRUE);

      return $potency->get($table);
   }

   public function getPotencyById($where, $table)
   {
      $potency = $this->load->database('potensi', TRUE);

      return $potency->get_where($table, $where);
   }

   public function getFuel($table)
   {
      $fuel = $this->load->database('fuel', TRUE);

      return $fuel->get($table)->last_row('array');
   }

   // public function getPueWeekly($startdate, $enddate)
   // {
   //    $electric = $this->load->database('electric', TRUE);

   //    $first = date("Y-m-d", $startdate);
   //    $last = date("Y-m-d", $enddate);
   //    $pueWeek = "
   //    SELECT
   //        DATE(tgl) AS date,
   //        TIME(tgl) AS time,
   //        pue
   //    FROM
   //        pue
   //    WHERE
   //        DATE(tgl) BETWEEN '$first' AND '$last' ";
   //    return $electric->query($pueWeek);
   //    // return $electric->last_query();
   // }

   public function getDataElectric($table)
   {
      $electric = $this->load->database('electric', TRUE);

      return $electric->order_by('id', 'desc')->limit(50)->get($table);
   }

   public function getUpdatedDataElectric($table)
   {
      $electric = $this->load->database('electric', TRUE);

      return $electric->get($table)->last_row('array');
   }

   public function getAvgPueWeekly($start, $end)
   {
      $electric = $this->load->database('electric', TRUE);

      $startDate = "'$start'";
      $endDate = "'$end'";
      $pueByDate = "
      SELECT
          AVG(pue) as average
      FROM
          pue
      WHERE
          DATE(tgl) BETWEEN $startDate AND $endDate ";
      return $electric->query($pueByDate);
      // return $electric->last_query();
   }

   public function getDataByDate($start, $end, $table)
   {
      $electric = $this->load->database('electric', TRUE);

      $startDate = "'$start'";
      $endDate = "'$end'";
      if ($table = "pue") {
         $dataByDate = "
            SELECT
               DATE(tgl) AS date,
               TIME(tgl) AS time,
               pue
            FROM
               pue
            WHERE
               DATE(tgl) BETWEEN $startDate AND $endDate ";
         return $electric->query($dataByDate);
      } else {
         $dataByDate = "
            SELECT
               DATE(tgl) AS date,
               TIME(tgl) AS time,
               loads,
               voltage,
               current,
               frequency
            FROM
               $table
            WHERE
               DATE(tgl) BETWEEN $startDate AND $endDate ";
         return $electric->query($dataByDate);
      }
      // return $electric->last_query();
   }

   // public function getPueWeekly($table)
   // {
   //    $pue = $this->load->database('pue', TRUE);

   //    return $pue->order_by('tgl', 'DESC')->limit(7)->get($table);
   // }

   public function getPueAvg()
   {
      $electric = $this->load->database('electric', TRUE);

      return $electric->select_avg('pue')->get('pue');
   }

   public function getPueMinMax($order)
   {
      $electric = $this->load->database('electric', TRUE);

      return $electric->order_by('pue', $order)->limit(1)->get('pue');
   }

   public function getPueMorning()
   {
      $electric = $this->load->database('electric', TRUE);
      $pagi = "
      SELECT
          DATE(tgl) AS date,
          pue
      FROM
          pue AS t1
      WHERE
          TIME(tgl) BETWEEN '07:00:00' AND '08:00:00'
          AND t1.id = (
              SELECT MIN(t2.id)
              FROM pue AS t2
              WHERE DATE(t2.tgl) = DATE(t1.tgl)
                AND TIME(t2.tgl) BETWEEN '07:00:00' AND '08:00:00'
          )
          ORDER BY t1.id DESC
          LIMIT 7";

      return $electric->query($pagi);
   }

   public function getPueNoon()
   {
      $electric = $this->load->database('electric', TRUE);
      $noon = "
      SELECT
          DATE(tgl) AS date,
          pue
      FROM
          pue AS t1
      WHERE
          TIME(tgl) BETWEEN '14:00:00' AND '15:00:00'
          AND t1.id = (
              SELECT MIN(t2.id)
              FROM pue AS t2
              WHERE DATE(t2.tgl) = DATE(t1.tgl)
                AND TIME(t2.tgl) BETWEEN '14:00:00' AND '15:00:00'
          )
          ORDER BY t1.id DESC
          LIMIT 7";

      return $electric->query($noon);
   }

   public function getPueNight()
   {
      $electric = $this->load->database('electric', TRUE);
      $night = "
      SELECT
          DATE(tgl) AS date,
          pue
      FROM
          pue AS t1
      WHERE
          TIME(tgl) BETWEEN '20:00:00' AND '21:00:00'
          AND t1.id = (
              SELECT MIN(t2.id)
              FROM pue AS t2
              WHERE DATE(t2.tgl) = DATE(t1.tgl)
                AND TIME(t2.tgl) BETWEEN '20:00:00' AND '21:00:00'
          )
          ORDER BY t1.id DESC
          LIMIT 7";

      return $electric->query($night);
   }

   public function getElectricData($id)
   {
      $pue = $this->load->database('pue', TRUE);
      return $pue->get_where('real_time', "id = $id");
   }

   public function getTempData($table)
   {
      $temp = $this->load->database('temp', TRUE);
      return $temp->get_where($table, "id = 1");
   }

   public function getLayout($table)
   {
      $layout = $this->load->database('layout', TRUE);

      return $layout->get($table);
   }

   public function inputSuhu($data, $table)
   {
      $this->db->insert($table, $data);
   }

   public function inputTangki($data, $table)
   {
      $fuel = $this->load->database('fuel', TRUE);

      $fuel->insert($table, $data);
   }

   public function inputPotency($data, $table)
   {
      $potency = $this->load->database('potensi', TRUE);

      $potency->insert($table, $data);
   }

   public function inputPue($data, $table)
   {
      $pue = $this->load->database('pue', TRUE);

      $pue->insert($table, $data);
   }

   public function inputLayout($data, $table)
   {
      $layout = $this->load->database('layout', TRUE);

      $layout->insert($table, $data);
   }

   public function inputElectric($data, $table)
   {
      $electric = $this->load->database('electric', TRUE);

      $electric->insert($table, $data);
   }

   public function editPueById($id, $data)
   {
      $pue = $this->load->database('pue', TRUE);

      $pue->where('id', $id);
      $pue->update('pue', $data);
   }

   public function editPotencyById($id, $data, $table)
   {
      $potency = $this->load->database('potensi', TRUE);

      $potency->where('id', $id);
      $potency->update($table, $data);
   }

   public function deletePotencyById($id, $table)
   {
      $potency = $this->load->database('potensi', TRUE);

      $potency->delete($table, array('id' => $id));
   }
}
