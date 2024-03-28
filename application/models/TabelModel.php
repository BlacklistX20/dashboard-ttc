<?php

class TabelModel extends CI_Model
{

   public function getDataSuhu($table)
   {
      return $this->db->get($table)->last_row('array');
   }

   public function getDataPotency($table)
   {
      $potency = $this->load->database('potensi', TRUE);

      return $potency->get($table);
   }

   public function getDataFuel($table)
   {
      $fuel = $this->load->database('fuel', TRUE);

      return $fuel->get($table)->last_row('array');
   }

   public function getDataPue($table)
   {
      $pue = $this->load->database('pue', TRUE);

      return $pue->get($table);
   }

   public function inputDataSuhu($data, $table)
   {
      $this->db->insert($table, $data);
   }

   public function inputDataTangki($data, $table)
   {
      $fuel = $this->load->database('fuel', TRUE);

      $fuel->insert($table, $data);
   }

   public function inputDataPotency($data, $table)
   {
      $potency = $this->load->database('potensi', TRUE);

      $potency->insert($table, $data);
   }

   public function inputDataPue($data, $table)
   {
      $pue = $this->load->database('pue', TRUE);

      $pue->insert($table, $data);
   }

   public function editDataPotency($id, $data, $table)
   {
      $potency = $this->load->database('potensi', TRUE);

      $potency->where('ID', $id);
      $potency->update($table, $data);
   }

   public function hapusDataPotency($where,$table)
   {
      $potency = $this->load->database('potensi', TRUE);

      $potency->where($where);
      $potency->delete($table);
  }
}
