<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  @property input $input
 *  @property TabelModel $TabelModel 
 */

class InputData extends CI_Controller
{

   public function __construct()
   {
      parent::__construct();

      $this->load->model('TabelModel');
   }

   public function pue()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $table = $this->input->post("table");
         $tgl = $this->input->post("tanggal");
         $lvmdp = $this->input->post("lvmdp");
         $rect1 = $this->input->post("rect1");
         $rect2 = $this->input->post("rect2");
         $rect3 = $this->input->post("rect3");
         $rect4 = $this->input->post("rect4");
         $rect5 = $this->input->post("rect5");
         $rect6 = $this->input->post("rect6");
         $rect7 = $this->input->post("rect7");
         $rect8 = $this->input->post("rect8");
         $rect9 = $this->input->post("rect9");
         $rect10 = $this->input->post("rect10");
         $rect11 = $this->input->post("rect11");
         $rect12 = $this->input->post("rect12");
         $rect13 = $this->input->post("rect13");
         $ups1 = $this->input->post("ups1");
         $ups2 = $this->input->post("ups2");
         $ups3 = $this->input->post("ups3");
         $ups4 = $this->input->post("ups4");
         $ups5 = $this->input->post("ups5");
         $ups6 = $this->input->post("ups6");

         $rectiT = $rect1 + $rect2 + $rect3 + $rect4 + $rect5 + $rect6 + $rect7 + $rect8 + $rect9 + $rect10 + $rect11 + $rect12 + $rect13;
         $upsT = $ups1 + $ups2 + $ups3 + $ups4 + $ups5 + $ups6;
         $loadIT = $rectiT + $upsT;
         $pue = $lvmdp / $loadIT;

         $data = array(
            'waktu' => $tgl,
            'lvmdp' => $lvmdp,
            'rect1' => $rect1,
            'rect2' => $rect2,
            'rect3' => $rect3,
            'rect4' => $rect4,
            'rect5' => $rect5,
            'rect6' => $rect6,
            'rect7' => $rect7,
            'rect8' => $rect8,
            'rect9' => $rect9,
            'rect10' => $rect10,
            'rect11' => $rect11,
            'rect12' => $rect12,
            'rect13' => $rect13,
            'ups1' => $ups1,
            'ups2' => $ups2,
            'ups3' => $ups3,
            'ups4' => $ups4,
            'ups5' => $ups5,
            'ups6' => $ups6,
            'total' => $loadIT,
            'pue' => $pue
         );

         $this->TabelModel->inputDataPue($data, $table);
         redirect('pages/pue');
      }
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
         $humidity10 = $this->input->post("humidity10");
         $temperature10 = $this->input->post("temperature10");
         $humidity11 = $this->input->post("humidity11");
         $temperature11 = $this->input->post("temperature11");
         $humidity12 = $this->input->post("humidity12");
         $temperature12 = $this->input->post("temperature12");
         $humidity13 = $this->input->post("humidity13");
         $temperature13 = $this->input->post("temperature13");

         // Transmission Room
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

         $this->TabelModel->inputDataSuhu($battery, 'battery4');
         $this->TabelModel->inputDataSuhu($recti, 'recti4');
         $this->TabelModel->inputDataSuhu($bss, 'bss');
         $this->TabelModel->inputDataSuhu($inter, 'inter');
         $this->TabelModel->inputDataSuhu($trans, 'trans');
      }
   }

   public function potencyEl()
   {
      $nama = $this->input->post("nama");
      $merk = $this->input->post("merk");
      $kapasitas = $this->input->post("kapasitas");
      $jumlah = $this->input->post("jumlah");

      $data = array(
         'nama' => $nama,
         'merk' => $merk,
         'kapasitas' => $kapasitas,
         'jumlah' => $jumlah
      );

      $this->TabelModel->inputDataPotency($data, 'electricity');
      redirect('pages/potency');
   }

   public function tangki()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');
         $tinggi = $this->input->post("tangki1");

         $data = array(
            'tinggi' => $tinggi,
            'waktu' => $tgl
         );

         $this->TabelModel->inputDataTangki($data, 'tangki1');
      }
   }
}
