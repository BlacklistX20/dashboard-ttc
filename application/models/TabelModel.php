<?php

class TabelModel extends CI_Model
{

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

   public function getDataForPue($where, $table)
   {
      $pue = $this->load->database('pue', TRUE);

      $pue->select('tgl, lvmdp, recti, ups');
      $pue->where('tgl', $where);
      return $pue->get($table)->row_array();
   }

   public function getPue($table)
   {
      $pue = $this->load->database('pue', TRUE);

      return $pue->get($table);
   }

   public function getPueById($where, $table)
   {
      $pue = $this->load->database('pue', TRUE);

      return $pue->get_where($table, $where)->row_array();
   }

   public function getPueWeekly($table)
   {
      $pue = $this->load->database('pue', TRUE);

      return $pue->order_by('tgl', 'DESC')->limit(7)->get($table);
   }

   public function getPueAvg()
   {
      $pue = $this->load->database('pue', TRUE);

      return $pue->select_avg('average')->get('pue');
   }

   public function getPueMinMax($order)
   {
      $pue = $this->load->database('pue', TRUE);

      return $pue->order_by('average', $order)->limit(1)->get('pue');
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
