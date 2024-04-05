<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *
 * @property  TabelModel  $TabelModel
 * @property  input $input
 *
 */

class Lt3 extends CI_Controller
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

      $this->TabelModel->inputSuhu($battery, 'battery3');
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

      $this->TabelModel->inputSuhu($recti, 'recti3');
    }
  }

  public function invas()
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

      $invas = array(
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
        'w6' => $tgl
      );

      $this->TabelModel->inputSuhu($invas, 'invas');
    }
  }

  public function core()
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

      $core = array(
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

      $this->TabelModel->inputSuhu($core, 'core');
    }
  }

  public function mkios()
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

      $mkios = array(
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

      $this->TabelModel->inputSuhu($mkios, 'mkios');
    }
  }

  public function ocs()
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

      $ocs = array(
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

      $this->TabelModel->inputSuhu($ocs, 'ocs');
    }
  }
}


/* End of file Lt3.php */
/* Location: ./application/controllers/Lt3.php */