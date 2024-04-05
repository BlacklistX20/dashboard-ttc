<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *
 * @property  TabelModel  $TabelModel
 * @property  input $input
 *
 */

class TrafoFuel extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('TabelModel');
  }

  public function harian()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');
         $tangki1 = $this->input->post("tangki1");
         $tangki2 = $this->input->post("tangki2");

         $harian = array(
            't1' => $tangki1,
            'w1' => $tgl,
            't2' => $tangki2,
            'w2' => $tgl
         );

         $this->TabelModel->inputTangki($harian, 'harian');
      }
   }

   public function bulanan()
   {
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
         $tgl = date('Y-m-d H:i:s');
         $tangki1 = $this->input->post("tangki1");
         $tangki2 = $this->input->post("tangki2");
         $tangki3 = $this->input->post("tangki3");

         $bulanan = array(
            't1' => $tangki1,
            'w1' => $tgl,
            't2' => $tangki2,
            'w2' => $tgl,
            't3' => $tangki3,
            'w3' => $tgl
         );

         $this->TabelModel->inputTangki($bulanan, 'bulanan');
      }
   }

   public function trafo()
  {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $tgl = date('Y-m-d H:i:s');

      $humidity1 = $this->input->post("humidity1");
      $temperature1 = $this->input->post("temperature1");
      $humidity2 = $this->input->post("humidity2");
      $temperature2 = $this->input->post("temperature2");
      $humidity3 = $this->input->post("humidity3");
      $temperature3 = $this->input->post("temperature3");
      $humidity4 = $this->input->post("humidity4");
      $temperature4 = $this->input->post("temperature4");

      $trafo = array(
        's1' => $temperature1,
        'k1' => $humidity1,
        'w1' => $tgl,
        's2' => $temperature2,
        'k2' => $humidity2,
        'w2' => $tgl,
        's3' => $temperature3,
        'k3' => $humidity3,
        'w3' => $tgl,
        's4' => $temperature4,
        'k4' => $humidity4,
        'w4' => $tgl
      );

      $this->TabelModel->inputSuhu($trafo, 'trafo');
    }
  }
}


/* End of file TrafoFuel.php */
/* Location: ./application/controllers/TrafoFuel.php */