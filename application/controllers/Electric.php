<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *
 * @property  TabelModel  $TabelModel
 * @property  input $input
 *
 */

class Electric extends CI_Controller
{

   public function __construct()
   {
      parent::__construct();
      $this->load->model('TabelModel');
   }

   public function lvmdp()
   {
   }

   public function recti()
   {
      function sum(...$numbers)
      {
         $sum = 0;
         foreach ($numbers as $n) {
            $sum += $n;
         }
         return (float)$sum;
      }

      function avg(...$numbers)
      {
         $sum = 0;
         foreach ($numbers as $n) {
            $sum += $n;
         }
         $avg = $sum / count($numbers);
         return (float)$avg;
      }

      $tgl = date('Y-m-d H:i:s');

      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         // Panel 2.36
         $p236 = $this->input->post("p236");
         $v236 = $this->input->post("v236");
         $i236 = $this->input->post("i236");
         $f236 = $this->input->post("f236");
         $panel236 = array(
            'tgl' => $tgl,
            'loads' => $p236,
            'voltage' => $v236,
            'current' => $i236,
            'frequency' => $f236
         );
         $this->TabelModel->inputElectric($panel236, 'p236');

         //panel 2.05
         $p205 = $this->input->post("p205");
         $v205 = $this->input->post("v205");
         $i205 = $this->input->post("i205");
         $f205 = $this->input->post("f205");
         $panel205 = array(
            'tgl' => $tgl,
            'loads' => $p205,
            'voltage' => $v205,
            'current' => $i205,
            'frequency' => $f205
         );
         $this->TabelModel->inputElectric($panel205, 'p205');

         //panel 3.10
         // $p310 = $this->input->post("p310");
         // $v310 = $this->input->post("v310");
         // $i310 = $this->input->post("i310");
         // $f310 = $this->input->post("f310");
         // $panel310 = array(
         //    'tgl' => $tgl,
         //    'loads' => $p310,
         //    'voltage' => $v310,
         //    'current' => $i310,
         //    'frequency' => $f310
         // );
         // $this->TabelModel->inputElectric($panel310, 'p310');

         //panel 3.05
         $p305 = $this->input->post("p305");
         $v305 = $this->input->post("v305");
         $i305 = $this->input->post("i305");
         $f305 = $this->input->post("f305");
         $panel305 = array(
            'tgl' => $tgl,
            'loads' => $p305,
            'voltage' => $v305,
            'current' => $i305,
            'frequency' => $f305
         );
         $this->TabelModel->inputElectric($panel305, 'p305');

         //panel 4.29
         $p429 = $this->input->post("p429");
         $v429 = $this->input->post("v429");
         $i429 = $this->input->post("i429");
         $f429 = $this->input->post("f429");
         $panel429 = array(
            'tgl' => $tgl,
            'loads' => $p429,
            'voltage' => $v429,
            'current' => $i429,
            'frequency' => $f429
         );
         $this->TabelModel->inputElectric($panel429, 'p429');
      }

      $p = sum($p205, $p236, $p305, $p429);
      $v = avg($v205, $v236, $v305, $v429);
      $i = avg($i205, $i236, $i305, $i429);
      $f = avg($f205, $f236, $f305, $f429);

      $recti = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );

      $this->TabelModel->inputElectric($recti, 'recti');
   }

   public function ups()
   {
   }

   // public function p236()
   // {
   //    if ($_SERVER["REQUEST_METHOD"] == "POST") {
   //       $tgl = date('Y-m-d H:i:s');

   //       $load236 = $this->input->post("load");
   //       $voltage236 = $this->input->post("voltage");
   //       $current236 = $this->input->post("current");
   //       $frequency236 = $this->input->post("frequency");

   //       $p236 = array(
   //          'tgl' => $tgl,
   //          'loads' => $load236,
   //          'voltage' => $voltage236,
   //          'current' => $current236,
   //          'frequency' => $frequency236
   //       );

   //       $this->TabelModel->inputElectric($p236, 'p236');
   //    }
   // }

   // public function p205()
   // {
   //    if ($_SERVER["REQUEST_METHOD"] == "POST") {
   //       $tgl = date('Y-m-d H:i:s');

   //       $load205 = $this->input->post("load");
   //       $voltage205 = $this->input->post("voltage");
   //       $current205 = $this->input->post("current");
   //       $frequency205 = $this->input->post("frequency");

   //       $p205 = array(
   //          'tgl' => $tgl,
   //          'loads' => $load205,
   //          'voltage' => $voltage205,
   //          'current' => $current205,
   //          'frequency' => $frequency205
   //       );

   //       $this->TabelModel->inputElectric($p205, 'p205');
   //    }
   // }

   // public function p310()
   // {
   //    if ($_SERVER["REQUEST_METHOD"] == "POST") {
   //       $tgl = date('Y-m-d H:i:s');

   //       $load310 = $this->input->post("load");
   //       $voltage310 = $this->input->post("voltage");
   //       $current310 = $this->input->post("current");
   //       $frequency310 = $this->input->post("frequency");

   //       $p310 = array(
   //          'tgl' => $tgl,
   //          'loads' => $load310,
   //          'voltage' => $voltage310,
   //          'current' => $current310,
   //          'frequency' => $frequency310
   //       );

   //       $this->TabelModel->inputElectric($p310, 'p310');
   //    }
   // }

   // public function p305()
   // {
   //    if ($_SERVER["REQUEST_METHOD"] == "POST") {
   //       $tgl = date('Y-m-d H:i:s');

   //       $load305 = $this->input->post("load");
   //       $voltage305 = $this->input->post("voltage");
   //       $current305 = $this->input->post("current");
   //       $frequency305 = $this->input->post("frequency");

   //       $p305 = array(
   //          'tgl' => $tgl,
   //          'loads' => $load305,
   //          'voltage' => $voltage305,
   //          'current' => $current305,
   //          'frequency' => $frequency305
   //       );

   //       $this->TabelModel->inputElectric($p305, 'p305');
   //    }
   // }

   // public function p429()
   // {
   //    if ($_SERVER["REQUEST_METHOD"] == "POST") {
   //       $tgl = date('Y-m-d H:i:s');

   //       $load429 = $this->input->post("load");
   //       $voltage429 = $this->input->post("voltage");
   //       $current429 = $this->input->post("current");
   //       $frequency429 = $this->input->post("frequency");

   //       $p429 = array(
   //          'tgl' => $tgl,
   //          'loads' => $load429,
   //          'voltage' => $voltage429,
   //          'current' => $current429,
   //          'frequency' => $frequency429
   //       );

   //       $this->TabelModel->inputElectric($p429, 'p429');
   //    }
   // }
}
