<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *
 * @property  TabelModel  $TabelModel
 * @property  input $input
 *
 */

class Lt5 extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('TabelModel');
  }

  public function utilityA()
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

      $utilityA = array(
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

      $this->TabelModel->inputSuhu($utilityA, 'utilitya');
    }
  }

  public function utilityB()
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

      $utilityB = array(
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

      $this->TabelModel->inputSuhu($utilityB, 'utilityb');
    }
  }

  public function datacenter()
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

      $dataCenter = array(
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

      $this->TabelModel->inputSuhu($dataCenter, 'datacenter');
    }
  }

  public function pengembangan()
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

      $pengembangan = array(
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

      $this->TabelModel->inputSuhu($pengembangan, 'pengembangan');
    }
  }

  public function containment()
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

      $containment = array(
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

      $this->TabelModel->inputSuhu($containment, 'containment');
    }
  }
}


/* End of file Lt5.php */
/* Location: ./application/controllers/Lt5.php */