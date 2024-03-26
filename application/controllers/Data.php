<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 *  @property input $input
 *  @property TabelModel $TabelModel 
 */

class Data extends CI_Controller {

   public function __construct(){
		parent::__construct();

      $this->load->model('TabelModel');
	}

   public function lt4() 
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');

         // Battery Room
         $humidity1 = $this->input->post("humidity1");
         $temperature1 = $this->input->post("temperature1");
         $humidity2 = $this->input->post("humidity2");
         $temperature2 = $this->input->post("temperature2");

         // Rectifier Room
         $humidity3 = $this->input->post("humidity3");
         $temperature3 = $this->input->post("temperature3");
         $humidity4 = $this->input->post("humidity4");
         $temperature4 = $this->input->post("temperature4");
         $humidity5 = $this->input->post("humidity5");
         $temperature5 = $this->input->post("temperature5");

         // BSS Room
         $humidity6 = $this->input->post("humidity6");
         $temperature6 = $this->input->post("temperature6");
         $humidity7 = $this->input->post("humidity7");
         $temperature7 = $this->input->post("temperature7");
         $humidity8 = $this->input->post("humidity8");
         $temperature8 = $this->input->post("temperature8");
         $humidity9 = $this->input->post("humidity9");
         $temperature9 = $this->input->post("temperature9");

         // Interconnection Room
         $humidity17 = $this->input->post("humidity17");
         $temperature17 = $this->input->post("temperature17");
         $humidity18 = $this->input->post("humidity18");
         $temperature18 = $this->input->post("temperature18");
         $humidity19 = $this->input->post("humidity19");
         $temperature19 = $this->input->post("temperature19");
         $humidity20 = $this->input->post("humidity20");
         $temperature20 = $this->input->post("temperature20");

         // Transmission Room
         $humidity10 = $this->input->post("humidity10");
         $temperature10 = $this->input->post("temperature10");
         $humidity11 = $this->input->post("humidity11");
         $temperature11 = $this->input->post("temperature11");
         $humidity12 = $this->input->post("humidity12");
         $temperature12 = $this->input->post("temperature12");
         $humidity13 = $this->input->post("humidity13");
         $temperature13 = $this->input->post("temperature13");
         $humidity14 = $this->input->post("humidity14");
         $temperature14 = $this->input->post("temperature14");
         $humidity15 = $this->input->post("humidity15");
         $temperature15 = $this->input->post("temperature15");
         $humidity16 = $this->input->post("humidity16");
         $temperature16 = $this->input->post("temperature16");
         

         $battery = array(
             's1' => $temperature1,
             'k1' => $humidity1,
             'w1' => $tgl,
             's2' => $temperature2,
             'k2' => $humidity2,
             'w2' => $tgl
         );
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
         $inter = array(
            's1' => $temperature17,
            'k1' => $humidity17,
            'w1' => $tgl,
            's2' => $temperature18,
            'k2' => $humidity18,
            'w2' => $tgl,
            's3' => $temperature19,
            'k3' => $humidity19,
            'w3' => $tgl,
            's4' => $temperature20,
            'k4' => $humidity20,
            'w4' => $tgl
         );
         $trans = array(
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
            'w4' => $tgl,
            's5' => $temperature14,
            'k5' => $humidity14,
            'w5' => $tgl,
            's6' => $temperature15,
            'k6' => $humidity15,
            'w6' => $tgl,
            's7' => $temperature16,
            'k7' => $humidity16,
            'w7' => $tgl
         );

         $this->TabelModel->inputDataSuhu($battery, 'battery4');
         $this->TabelModel->inputDataSuhu($recti, 'recti4');
         $this->TabelModel->inputDataSuhu($bss, 'bss');
         $this->TabelModel->inputDataSuhu($inter, 'inter');
         $this->TabelModel->inputDataSuhu($trans, 'trans');
     }
   }
}