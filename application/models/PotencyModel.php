<?php

class PotencyModel extends CI_Model
{
   public function getdapot()
   {
      $dapot = $this->load->database('dapot', TRUE);

      return $dapot->get('power');
   }
}