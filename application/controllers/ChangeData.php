<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  @property input $input
 *  @property TabelModel $TabelModel 
 */

class ChangeData extends CI_Controller
{
   public function __construct()
   {
      parent::__construct();

      $this->load->model('TabelModel');
   }

   public function editPotency($id)
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

      $this->TabelModel->editDataPotency($id, $data, 'electricity');
      redirect('pages/potency');
   }
}
