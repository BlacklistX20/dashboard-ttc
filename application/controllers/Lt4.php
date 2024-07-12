<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  @property TabelModel $TabelModel 
 *  @property input $input
 */

class Lt4 extends CI_Controller
{
   public function __construct()
   {
      parent::__construct();
      $this->load->model('TabelModel');
   }

   public function battery()
   {
      $tgl = date('Y-m-d H:i:s');

      $humidity1 = $this->input->post("humidity1");
      $temperature1 = $this->input->post("temperature1");
      $humidity2 = $this->input->post("humidity2");
      $temperature2 = $this->input->post("temperature2");

      $battery = array(
         's1' => $temperature1,
         'k1' => $humidity1,
         'w1' => $tgl,
         's2' => $temperature2,
         'k2' => $humidity2,
         'w2' => $tgl
      );

      $this->TabelModel->inputSuhu($battery, 'battery4');
   }

   public function recti()
   {
      $tgl = date('Y-m-d H:i:s');

      $humidity1 = $this->input->post("humidity1");
      $temperature1 = $this->input->post("temperature1");
      $humidity2 = $this->input->post("humidity2");
      $temperature2 = $this->input->post("temperature2");
      $humidity3 = $this->input->post("humidity3");
      $temperature3 = $this->input->post("temperature3");

      $recti = array(
         's1' => $temperature1,
         'k1' => $humidity1,
         'w1' => $tgl,
         's2' => $temperature2,
         'k2' => $humidity2,
         'w2' => $tgl,
         's3' => $temperature3,
         'k3' => $humidity3,
         'w3' => $tgl
      );

      $this->TabelModel->inputSuhu($recti, 'recti4');
   }

   public function bss()
   {
      $tgl = date('Y-m-d H:i:s');

      $humidity1 = $this->input->post("humidity1");
      $temperature1 = $this->input->post("temperature1");
      $humidity2 = $this->input->post("humidity2");
      $temperature2 = $this->input->post("temperature2");
      $humidity3 = $this->input->post("humidity3");
      $temperature3 = $this->input->post("temperature3");
      $humidity4 = $this->input->post("humidity4");
      $temperature4 = $this->input->post("temperature4");

      $bss = array(
         's1' => $temperature1,
         'k1' => $humidity1,
         'w1' => $tgl,
         's2' => $temperature2,
         'k2' => $humidity2,
         'w2' => $tgl,
         's3' => $temperature3,
         'k3' => $humidity3,
         'w3' => $tgl,
         's4' => $temperature4,
         'k4' => $humidity4,
         'w4' => $tgl
      );

      $this->TabelModel->inputSuhu($bss, 'bss');
   }

   public function inter()
   {
      $tgl = date('Y-m-d H:i:s');

      $humidity1 = $this->input->post("humidity1");
      $temperature1 = $this->input->post("temperature1");
      $humidity2 = $this->input->post("humidity2");
      $temperature2 = $this->input->post("temperature2");
      $humidity3 = $this->input->post("humidity3");
      $temperature3 = $this->input->post("temperature3");
      $humidity4 = $this->input->post("humidity4");
      $temperature4 = $this->input->post("temperature4");

      $inter = array(
         's1' => $temperature1,
         'k1' => $humidity1,
         'w1' => $tgl,
         's2' => $temperature2,
         'k2' => $humidity2,
         'w2' => $tgl,
         's3' => $temperature3,
         'k3' => $humidity3,
         'w3' => $tgl,
         's4' => $temperature4,
         'k4' => $humidity4,
         'w4' => $tgl
      );

      $this->TabelModel->inputSuhu($inter, 'inter');
   }

   public function trans()
   {

      $tgl = date('Y-m-d H:i:s');

      $humidity1 = $this->input->post("humidity1");
      $temperature1 = $this->input->post("temperature1");
      $humidity2 = $this->input->post("humidity2");
      $temperature2 = $this->input->post("temperature2");
      $humidity3 = $this->input->post("humidity3");
      $temperature3 = $this->input->post("temperature3");
      $humidity4 = $this->input->post("humidity4");
      $temperature4 = $this->input->post("temperature4");
      $humidity5 = $this->input->post("humidity5");
      $temperature5 = $this->input->post("temperature5");
      $humidity6 = $this->input->post("humidity6");
      $temperature6 = $this->input->post("temperature6");

      $trans = array(
         's1' => $temperature1,
         'k1' => $humidity1,
         'w1' => $tgl,
         's2' => $temperature2,
         'k2' => $humidity2,
         'w2' => $tgl,
         's3' => $temperature3,
         'k3' => $humidity3,
         'w3' => $tgl,
         's4' => $temperature4,
         'k4' => $humidity4,
         'w4' => $tgl,
         's5' => $temperature5,
         'k5' => $humidity5,
         'w5' => $tgl,
         's6' => $temperature6,
         'k6' => $humidity6,
         'w6' => $tgl,
      );

      $this->TabelModel->inputSuhu($trans, 'trans');
   }
}
