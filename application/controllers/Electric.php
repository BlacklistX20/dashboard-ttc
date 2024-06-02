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
      $data['p236'] = 0;
      $data['p205'] = 0;
      $data['p310'] = 0;
      $data['p305'] = 0;
      $data['p429'] = 0;

      function sum(...$numbers)
      {
         $sum = 0;
         foreach ($numbers as $n) {
            $sum += $n;
         }
         return (float)$sum;
      }

      $tgl = date('Y-m-d H:i:s');
      $load = sum($data['p236']['loads'], $data['p205']['loads'], $data['p310']['loads'], $data['p305']['loads'], $data['p429']['loads']);
      $voltage = sum($data['p236']['voltage'], $data['p205']['voltage'], $data['p310']['voltage'], $data['p305']['voltage'], $data['p429']['voltage']);
      $current = sum($data['p236']['current'], $data['p205']['current'], $data['p310']['current'], $data['p305']['current'], $data['p429']['current']);
      $frequency = sum($data['p236']['frequency'], $data['p205']['frequency'], $data['p310']['frequency'], $data['p305']['frequency'], $data['p429']['frequency']);

      $recti = array(
         'tgl' => $tgl,
         'loads' => $load,
         'voltage' => $voltage,
         'current' => $current,
         'frequency' => $frequency
      );

      $this->TabelModel->inputElectric($recti, 'recti');
   }

   public function ups()
   {
   }

   public function p236()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');

         $load = $this->input->post("load");
         $voltage = $this->input->post("voltage");
         $current = $this->input->post("current");
         $frequency = $this->input->post("frequency");

         $p236 = array(
            'tgl' => $tgl,
            'loads' => $load,
            'voltage' => $voltage,
            'current' => $current,
            'frequency' => $frequency
         );

         $this->TabelModel->inputElectric($p236, 'p236');
      }
   }

   public function p205()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');

         $load = $this->input->post("load");
         $voltage = $this->input->post("voltage");
         $current = $this->input->post("current");
         $frequency = $this->input->post("frequency");

         $p205 = array(
            'tgl' => $tgl,
            'loads' => $load,
            'voltage' => $voltage,
            'current' => $current,
            'frequency' => $frequency
         );

         $this->TabelModel->inputElectric($p205, 'p205');
      }
   }

   public function p310()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');

         $load = $this->input->post("load");
         $voltage = $this->input->post("voltage");
         $current = $this->input->post("current");
         $frequency = $this->input->post("frequency");

         $p310 = array(
            'tgl' => $tgl,
            'loads' => $load,
            'voltage' => $voltage,
            'current' => $current,
            'frequency' => $frequency
         );

         $this->TabelModel->inputElectric($p310, 'p310');
      }
   }

   public function p305()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');

         $load = $this->input->post("load");
         $voltage = $this->input->post("voltage");
         $current = $this->input->post("current");
         $frequency = $this->input->post("frequency");

         $p305 = array(
            'tgl' => $tgl,
            'loads' => $load,
            'voltage' => $voltage,
            'current' => $current,
            'frequency' => $frequency
         );

         $this->TabelModel->inputElectric($p305, 'p305');
      }
   }

   public function p429()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');

         $load = $this->input->post("load");
         $voltage = $this->input->post("voltage");
         $current = $this->input->post("current");
         $frequency = $this->input->post("frequency");

         $p429 = array(
            'tgl' => $tgl,
            'loads' => $load,
            'voltage' => $voltage,
            'current' => $current,
            'frequency' => $frequency
         );

         $this->TabelModel->inputElectric($p429, 'p429');
      }
   }
}
