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

   public function pue()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('pue');
      
      $pue = array(
         'tgl' => $tgl,
         'pue' => $p,
      );
      
      $this->TabelModel->inputElectric($pue, 'pue');
   }

   public function lvmdp()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $lvmdp = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($lvmdp, 'lvmdp');
   }

   public function it()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $it = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($it, 'it');
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
   }

   public function p236()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $p236 = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($p236, 'p236');
   }

   public function p205()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $p205 = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($p205, 'p205');
   }

   public function p310()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $p310 = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($p310, 'p310');
   }

   public function p305()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $p305 = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($p305, 'p305');
   }

   public function p429()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $p429 = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($p429, 'p429');
   }

   public function ups202()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $ups202 = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($ups202, 'ups202');
   }

   public function ups203()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $ups203 = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($ups203, 'ups203');
   }

   public function ups301()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $ups301 = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($ups301, 'ups301');
   }

   public function ups302()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $ups302 = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($ups302, 'ups302');
   }

   public function ups501()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $ups501 = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($ups501, 'ups501');
   }

   public function ups502()
   {
      $tgl = date('Y-m-d H:i:s');
      $p = $this->input->post('p');
      $v = $this->input->post('v');
      $i = $this->input->post('i');
      $f = $this->input->post('f');
      $ups502 = array(
         'tgl' => $tgl,
         'loads' => $p,
         'voltage' => $v,
         'current' => $i,
         'frequency' => $f
      );
      
      $this->TabelModel->inputElectric($ups502, 'ups502');
   }

}
