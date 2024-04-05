<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *
 * @property  TabelModel  $TabelModel
 * @property  input $input
 *
 */

class Lt2 extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('TabelModel');
  }

  public function battery()
  {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $tgl = date('Y-m-d H:i:s');

      $humidity1 = $this->input->post("humidity1");
      $temperature1 = $this->input->post("temperature1");
      $humidity2 = $this->input->post("humidity2");
      $temperature2 = $this->input->post("temperature2");

      $battery = array(
        's1' => $temperature1,
        'k1' => $humidity1,
        'w1' => $tgl,
        's2' => $temperature2,
        'k2' => $humidity2,
        'w2' => $tgl
      );

      $this->TabelModel->inputSuhu($battery, 'battery2');
    }
  }

  public function recti()
  {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $tgl = date('Y-m-d H:i:s');

      $humidity1 = $this->input->post("humidity1");
      $temperature1 = $this->input->post("temperature1");
      $humidity2 = $this->input->post("humidity2");
      $temperature2 = $this->input->post("temperature2");
      $humidity3 = $this->input->post("humidity3");
      $temperature3 = $this->input->post("temperature3");

      $recti = array(
        's1' => $temperature1,
        'k1' => $humidity1,
        'w1' => $tgl,
        's2' => $temperature2,
        'k2' => $humidity2,
        'w2' => $tgl,
        's3' => $temperature3,
        'k3' => $humidity3,
        'w3' => $tgl
      );

      $this->TabelModel->inputSuhu($recti, 'recti2');
    }
  }

  public function msc()
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
      $humidity5 = $this->input->post("humidity5");
      $temperature5 = $this->input->post("temperature5");
      $humidity6 = $this->input->post("humidity6");
      $temperature6 = $this->input->post("temperature6");
      $humidity7 = $this->input->post("humidity7");
      $temperature7 = $this->input->post("temperature7");
      $humidity8 = $this->input->post("humidity8");
      $temperature8 = $this->input->post("temperature8");
      $humidity9 = $this->input->post("humidity9");
      $temperature9 = $this->input->post("temperature9");
      $humidity10 = $this->input->post("humidity10");
      $temperature10 = $this->input->post("temperature10");

      $msc = array(
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
        'w4' => $tgl,
        's5' => $temperature5,
        'k5' => $humidity5,
        'w5' => $tgl,
        's6' => $temperature6,
        'k6' => $humidity6,
        'w6' => $tgl,
        's7' => $temperature7,
        'k7' => $humidity7,
        'w7' => $tgl,
        's8' => $temperature8,
        'k8' => $humidity8,
        'w8' => $tgl,
        's9' => $temperature9,
        'k9' => $humidity9,
        'w9' => $tgl,
        's10' => $temperature10,
        'k10' => $humidity10,
        'w10' => $tgl,
      );

      $this->TabelModel->inputSuhu($msc, 'msc');
    }
  }

  public function csps()
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

      $csps = array(
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

      $this->TabelModel->inputSuhu($csps, 'csps');
    }
  }
}


/* End of file Lt2.php */
/* Location: ./application/controllers/Lt2.php */