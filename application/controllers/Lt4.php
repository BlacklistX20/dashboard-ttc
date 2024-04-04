<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  @property TabelModel $TabelModel 
 *  @property input $input
 */

class Lt4 extends CI_Controller
{
   public function battery()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
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
      echo "ok";
   }

   public function recti()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');

         $humidity3 = $this->input->post("humidity3");
         $temperature3 = $this->input->post("temperature3");
         $humidity4 = $this->input->post("humidity4");
         $temperature4 = $this->input->post("temperature4");
         $humidity5 = $this->input->post("humidity5");
         $temperature5 = $this->input->post("temperature5");

         $recti = array(
            's1' => $temperature3,
            'k1' => $humidity3,
            'w1' => $tgl,
            's2' => $temperature4,
            'k2' => $humidity4,
            'w2' => $tgl,
            's3' => $temperature5,
            'k3' => $humidity5,
            'w3' => $tgl
         );

         $this->TabelModel->inputSuhu($recti, 'recti4');
      }
   }

   public function bss()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');

         $humidity6 = $this->input->post("humidity6");
         $temperature6 = $this->input->post("temperature6");
         $humidity7 = $this->input->post("humidity7");
         $temperature7 = $this->input->post("temperature7");
         $humidity8 = $this->input->post("humidity8");
         $temperature8 = $this->input->post("temperature8");
         $humidity9 = $this->input->post("humidity9");
         $temperature9 = $this->input->post("temperature9");

         $bss = array(
            's1' => $temperature6,
            'k1' => $humidity6,
            'w1' => $tgl,
            's2' => $temperature7,
            'k2' => $humidity7,
            'w2' => $tgl,
            's3' => $temperature8,
            'k3' => $humidity8,
            'w3' => $tgl,
            's4' => $temperature9,
            'k4' => $humidity9,
            'w4' => $tgl
         );

         $this->TabelModel->inputSuhu($bss, 'bss');
      }
   }

   public function inter()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');
         
         $humidity10 = $this->input->post("humidity10");
         $temperature10 = $this->input->post("temperature10");
         $humidity11 = $this->input->post("humidity11");
         $temperature11 = $this->input->post("temperature11");
         $humidity12 = $this->input->post("humidity12");
         $temperature12 = $this->input->post("temperature12");
         $humidity13 = $this->input->post("humidity13");
         $temperature13 = $this->input->post("temperature13");

         $inter = array(
            's1' => $temperature10,
            'k1' => $humidity10,
            'w1' => $tgl,
            's2' => $temperature11,
            'k2' => $humidity11,
            'w2' => $tgl,
            's3' => $temperature12,
            'k3' => $humidity12,
            'w3' => $tgl,
            's4' => $temperature13,
            'k4' => $humidity13,
            'w4' => $tgl
         );

         $this->TabelModel->inputSuhu($inter, 'inter');
      }
   }

   public function trans()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');

         $humidity14 = $this->input->post("humidity14");
         $temperature14 = $this->input->post("temperature14");
         $humidity15 = $this->input->post("humidity15");
         $temperature15 = $this->input->post("temperature15");
         $humidity16 = $this->input->post("humidity16");
         $temperature16 = $this->input->post("temperature16");
         $humidity17 = $this->input->post("humidity17");
         $temperature17 = $this->input->post("temperature17");
         $humidity18 = $this->input->post("humidity18");
         $temperature18 = $this->input->post("temperature18");
         $humidity19 = $this->input->post("humidity19");
         $temperature19 = $this->input->post("temperature19");

         $trans = array(
            's1' => $temperature14,
            'k1' => $humidity14,
            'w1' => $tgl,
            's2' => $temperature15,
            'k2' => $humidity15,
            'w2' => $tgl,
            's3' => $temperature16,
            'k3' => $humidity16,
            'w3' => $tgl,
            's4' => $temperature17,
            'k4' => $humidity17,
            'w4' => $tgl,
            's5' => $temperature18,
            'k5' => $humidity18,
            'w5' => $tgl,
            's6' => $temperature19,
            'k6' => $humidity19,
            'w6' => $tgl,
         );

         $this->TabelModel->inputSuhu($trans, 'trans');
      }
   }
}
