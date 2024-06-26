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
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $recti = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($recti, 'recti');
      $data = $this->TabelModel->getElectric('recti');
      
      echo json_encode($data);
   }

   public function ups()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $ups = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($ups, 'ups');
      $data = $this->TabelModel->getElectric('ups');
      
      echo json_encode($data);
   }

   public function p236()
   {
         $tgl = date('Y-m-d H:i:s');

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
   }

   public function p205()
   {
         $tgl = date('Y-m-d H:i:s');

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
   }

   public function p310()
   {
         $tgl = date('Y-m-d H:i:s');

         $p310 = $this->input->post("p310");
         $v310 = $this->input->post("v310");
         $i310 = $this->input->post("i310");
         $f310 = $this->input->post("f310");
         $panel310 = array(
            'tgl' => $tgl,
            'loads' => $p310,
            'voltage' => $v310,
            'current' => $i310,
            'frequency' => $f310
         );
         
         $this->TabelModel->inputElectric($panel310, 'p310');
   }

   public function p305()
   {
         $tgl = date('Y-m-d H:i:s');

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
   }

   public function p429()
   {
         $tgl = date('Y-m-d H:i:s');

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

   public function ups2()
   {
         $tgl = date('Y-m-d H:i:s');

         // $p202 = $this->input->post("p202");
         // $v202 = $this->input->post("v202");
         // $i202 = $this->input->post("i202");
         // $f202 = $this->input->post("f202");

         $p203 = $this->input->post("p203");
         $v203 = $this->input->post("v203");
         $i203 = $this->input->post("i203");
         $f203 = $this->input->post("f203");

         // $ups202 = array(
         //    'tgl' => $tgl,
         //    'loads' => $p202,
         //    'voltage' => $v202,
         //    'current' => $i202,
         //    'frequency' => $f202
         // );
         // $this->TabelModel->inputElectric($ups202, 'ups202');

         $ups203 = array(
            'tgl' => $tgl,
            'loads' => $p203,
            'voltage' => $v203,
            'current' => $i203,
            'frequency' => $f203
         );
         $this->TabelModel->inputElectric($ups203, 'ups203');
   }

   public function ups3()
   {
         $tgl = date('Y-m-d H:i:s');

         $p301 = $this->input->post("p301");
         $v301 = $this->input->post("v301");
         $i301 = $this->input->post("i301");
         $f301 = $this->input->post("f301");

         $p302 = $this->input->post("p302");
         $v302 = $this->input->post("v302");
         $i302 = $this->input->post("i302");
         $f302 = $this->input->post("f302");

         $ups301 = array(
            'tgl' => $tgl,
            'loads' => $p301,
            'voltage' => $v301,
            'current' => $i301,
            'frequency' => $f301
         );
         $this->TabelModel->inputElectric($ups301, 'ups301');

         $ups302 = array(
            'tgl' => $tgl,
            'loads' => $p302,
            'voltage' => $v302,
            'current' => $i302,
            'frequency' => $f302
         );
         $this->TabelModel->inputElectric($ups302, 'ups302');
   }

   public function ups5()
   {
         $tgl = date('Y-m-d H:i:s');

         $p501 = $this->input->post("p501");
         $v501 = $this->input->post("v501");
         $i501 = $this->input->post("i501");
         $f501 = $this->input->post("f501");
         
         $p502 = $this->input->post("p502");
         $v502 = $this->input->post("v502");
         $i502 = $this->input->post("i502");
         $f502 = $this->input->post("f502");

         $ups501 = array(
            'tgl' => $tgl,
            'loads' => $p501,
            'voltage' => $v501,
            'current' => $i501,
            'frequency' => $f501
         );
         $this->TabelModel->inputElectric($ups501, 'ups501');

         $ups502 = array(
            'tgl' => $tgl,
            'loads' => $p502,
            'voltage' => $v502,
            'current' => $i502,
            'frequency' => $f502
         );
         $this->TabelModel->inputElectric($ups502, 'ups502');
   }

}
