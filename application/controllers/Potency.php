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
      $data['power'] = $this->PotencyModel->get('power')->result();
      // print_r($data);

      $this->load->view('potencyPower', $data);
   }

   function addPower() {
      $data = array(
         'ne_id' => $this->input->post("ne_id"),
         'floor' => $this->input->post("floor"),
         'room' => $this->input->post("room"),
         'category' => $this->input->post("category"),
         'name' => $this->input->post("name"),
         'vendor' => $this->input->post("vendor"),
         'brand' => $this->input->post("brand"),
         'type' => $this->input->post("type"),
         'role' => $this->input->post("role"),
         'capacity' => $this->input->post("capacity"),
         'modul' => $this->input->post("modul"),
         'modul_capacity' => $this->input->post("modul_capacity"),
         'occupancy' => $this->input->post("occupancy"),
         'system' => $this->input->post("system"),
         'source_a' => $this->input->post("source_a"),
         'source_b' => $this->input->post("source_b"),
         'kondisi' => $this->input->post("kondisi"),
         'status' => $this->input->post("status"),
         'keterangan' => $this->input->post("keterangan"),
         'install' => $this->input->post("install"),
         'maintanance' => $this->input->post("maintanance"),
         'updated_at' => date('Y-m-d H:i:s'),
      );

      $this->PotencyModel->add($data, 'power');
      redirect('potency/pages');
   }

   function editPower() {
      
   }

   public function getDapot() {
      $data = $this->PotencyModel->getdapot()->num_rows();

      echo $data;
   }
}