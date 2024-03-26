<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 *  @property TabelModel $TabelModel 
 */

class GetData extends CI_Controller {

   public function __construct(){
		parent::__construct();

      $this->load->model('TabelModel');
	}

   public function lt4()
   {
      $data['batt4'] = $this->TabelModel->getDataSuhu('battery4');
      $data['recti4'] = $this->TabelModel->getDataSuhu('recti4');
      $data['bss'] = $this->TabelModel->getDataSuhu('bss');
      $data['inter'] = $this->TabelModel->getDataSuhu('inter');
      $data['trans'] = $this->TabelModel->getDataSuhu('trans');

      json_encode($data);
   }
}
