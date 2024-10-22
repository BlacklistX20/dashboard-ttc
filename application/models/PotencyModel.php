<?php

class PotencyModel extends CI_Model
{
   public function get($table)
   {
      $dapot = $this->load->database('dapot', TRUE);

      return $dapot->get($table);
   }

   public function add($data, $table)
   {
      $dapot = $this->load->database('dapot', TRUE);

      $dapot->insert($table, $data);
   }

   public function edit($id, $data, $table)
   {
      $dapot = $this->load->database('dapot', TRUE);

      $dapot->where('id', $id);
      $dapot->update($table, $data);
   }

   public function delete($id, $table)
   {
      $dapot = $this->load->database('dapot', TRUE);

      $dapot->delete($table, array('id' => $id));
   }
}