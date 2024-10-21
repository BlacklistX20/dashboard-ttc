<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Potency extends CI_Controller 
{
   public function __construct()
   {
      parent::__construct();
      $this->load->model('PotencyModel');
   }

   function pages() {
      
   }

   public function getDapot() {
      $data = $this->PotencyModel->getdapot()->num_rows();

      echo $data;
   }
}