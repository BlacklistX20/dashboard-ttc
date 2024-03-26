<?php

class TabelModel extends CI_Model {

   public function getDataSuhu($table)
   {
      return $this->db->get($table)->last_row('array');
   }

   public function inputDataSuhu($data, $table)
   {
      $this->db->insert($table, $data);
   }

   public function getDataPotency($table)
   {
      $potency = $this->load->database('potensi', TRUE);

      return $potency->get($table);
   }
}