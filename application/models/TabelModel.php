<?php

class TabelModel extends CI_Model {

   public function getDataSuhu($table)
   {
      $this->db->get($table);
   }

   public function inputDataSuhu($data, $table)
   {
      $this->db->insert($table, $data);
   }

   public function getDataPotency($table)
   {
      $potency = $this->load->database('potensi', TRUE);

      $potency->get($table);
   }
}