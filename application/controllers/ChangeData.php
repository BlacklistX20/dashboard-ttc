<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ChangeData extends CI_Controller
{
   public function __construct()
   {
      parent::__construct();

      $this->load->model('TabelModel');
   }

   public function editPotencyEl($id)
   {
      $nama = $this->input->post("nama");
      $merk = $this->input->post("merk");
      $kapasitas = $this->input->post("kapasitas");
      $jumlah = $this->input->post("jumlah");
      $sn = $this->input->post("sn");

      $data = array(
         'nama' => $nama,
         'merk' => $merk,
         'kapasitas' => $kapasitas,
         'jumlah' => $jumlah,
         'sn' => $sn
      );

      $this->TabelModel->editPotencyById($id, $data, 'electricity');
      redirect('pages/potency');
   }

   public function deletePotencyEl($id)
   {
      $this->TabelModel->deletePotencyById($id, 'electricity');

      redirect('pages/potency');
   }

   public function editPotencyCool($id)
   {
      $lantai = $this->input->post("lantai");
      $ruang = $this->input->post("ruang");
      $merk = $this->input->post("merk");
      $type = $this->input->post("type");
      $compressor = $this->input->post("compressor");
      $flow = $this->input->post("flow");
      $jumlah = $this->input->post("jumlah");
      $keterangan = $this->input->post("keterangan");

      $data = array(
         'lantai' => $lantai,
         'ruang' => $ruang,
         'merk' => $merk,
         'type' => $type,
         'compressor' => $compressor,
         'flow' => $flow,
         'jumlah' => $jumlah,
         'keterangan' => $keterangan
      );


      $this->TabelModel->editPotencyById($id, $data, 'cooling');
      redirect('pages/potency');
   }

   public function deletePotencyCool($id)
   {
      $this->TabelModel->deletePotencyById($id, 'cooling');

      redirect('pages/potency');
   }

   public function editPotencyFire($id)
   {
      $lantai = $this->input->post("lantai");
      $ruang = $this->input->post("ruang");
      $nama = $this->input->post("nama");
      $merk = $this->input->post("merk");
      $type = $this->input->post("type");
      $jumlah = $this->input->post("jumlah");
      $keterangan = $this->input->post("keterangan");

      $data = array(
         'lantai' => $lantai,
         'ruang' => $ruang,
         'nama' => $nama,
         'merk' => $merk,
         'type' => $type,
         'jumlah' => $jumlah,
         'keterangan' => $keterangan
      );


      $this->TabelModel->editPotencyById($id, $data, 'fire');
      redirect('pages/potency');
   }

   public function deletePotencyFire($id)
   {
      $this->TabelModel->deletePotencyById($id, 'fire');

      redirect('pages/potency');
   }

   public function editPotencyUps($id)
   {
      $nama = $this->input->post("nama");
      $merk = $this->input->post("merk");
      $type = $this->input->post("type");
      $merkBatt = $this->input->post("merk_battery");
      $typeBatt = $this->input->post("type_battery");
      $jumlahBatt = $this->input->post("jumlah_battery");
      $keterangan = $this->input->post("keterangan");
      $sn = $this->input->post("sn");

      $data = array(
         'nama' => $nama,
         'merk' => $merk,
         'type' => $type,
         'merk_battery' => $merkBatt,
         'type_battery' => $typeBatt,
         'jumlah_battery' => $jumlahBatt,
         'keterangan' => $keterangan,
         'sn' => $sn
      );

      $this->TabelModel->editPotencyById($id, $data, 'ups');
      redirect('pages/potency');
   }

   public function deletePotencyUps($id)
   {
      $this->TabelModel->deletePotencyById($id, 'ups');

      redirect('pages/potency');
   }

   public function editPotencyRect($id)
   {
      $nama = $this->input->post("nama");
      $merk = $this->input->post("merk");
      $type = $this->input->post("type");
      $merkBatt = $this->input->post("merk_battery");
      $typeBatt = $this->input->post("type_battery");
      $jumlahBatt = $this->input->post("jumlah_battery");
      $keterangan = $this->input->post("keterangan");
      $sn = $this->input->post("sn");

      $data = array(
         'nama' => $nama,
         'merk' => $merk,
         'type' => $type,
         'merk_battery' => $merkBatt,
         'type_battery' => $typeBatt,
         'jumlah_battery' => $jumlahBatt,
         'keterangan' => $keterangan,
         'sn' => $sn
      );

      $this->TabelModel->editPotencyById($id, $data, 'recti');
      redirect('pages/potency');
   }

   public function deletePotencyRect($id)
   {
      $this->TabelModel->deletePotencyById($id, 'recti');

      redirect('pages/potency');
   }

   public function editPotencyPene($id)
   {
      $nama = $this->input->post("nama");
      $merk = $this->input->post("merk");
      $type = $this->input->post("type");
      $jumlah = $this->input->post("jumlah");
      $keterangan = $this->input->post("keterangan");

      $data = array(
         'nama' => $nama,
         'merk' => $merk,
         'type' => $type,
         'jumlah' => $jumlah,
         'keterangan' => $keterangan
      );

      $this->TabelModel->editPotencyById($id, $data, 'penerangan');
      redirect('pages/potency');
   }

   public function deletePotencyPene($id)
   {
      $this->TabelModel->deletePotencyById($id, 'penerangan');

      redirect('pages/potency');
   }

   public function editPotencyWarn($id)
   {
      $nama = $this->input->post("nama");
      $merk = $this->input->post("merk");
      $type = $this->input->post("type");
      $jumlah = $this->input->post("jumlah");
      $keterangan = $this->input->post("keterangan");

      $data = array(
         'nama' => $nama,
         'merk' => $merk,
         'type' => $type,
         'jumlah' => $jumlah,
         'keterangan' => $keterangan
      );

      $this->TabelModel->editPotencyById($id, $data, 'warning');
      redirect('pages/potency');
   }

   public function deletePotencyWarn($id)
   {
      $this->TabelModel->deletePotencyById($id, 'warning');

      redirect('pages/potency');
   }

   public function editPotencySupp($id)
   {
      $nama = $this->input->post("nama");
      $merk = $this->input->post("merk");
      $type = $this->input->post("type");
      $jumlah = $this->input->post("jumlah");
      $keterangan = $this->input->post("keterangan");

      $data = array(
         'nama' => $nama,
         'merk' => $merk,
         'type' => $type,
         'jumlah' => $jumlah,
         'keterangan' => $keterangan
      );

      $this->TabelModel->editPotencyById($id, $data, 'support');
      redirect('pages/potency');
   }

   public function deletePotencySupp($id)
   {
      $this->TabelModel->deletePotencyById($id, 'support');

      redirect('pages/potency');
   }
}
