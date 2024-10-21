<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {

	public function __construct(){
		parent::__construct();

      $this->load->model('TabelModel');
	}

	public function index()
	{
		$data['avg'] = $this->TabelModel->getPueAvg()->result('array');
		$data['min'] = $this->TabelModel->getPueMinMax('ASC')->result('array');
		$data['max'] = $this->TabelModel->getPueMinMax('DESC')->result('array');

		$this->load->view('index', $data);
	}

	public function temp()
	{
		$this->load->view('temp');
	}

	public function electric()
	{
		$this->load->view('electric');
	}

	public function fuel()
	{
		$this->load->view('fuel');
	}

	public function potency()
	{
		$data['electric'] = $this->TabelModel->getPotency('electricity')->result();
		$data['cooling'] = $this->TabelModel->getPotency('cooling')->result();
		$data['fire'] = $this->TabelModel->getPotency('fire')->result();
		$data['ups'] = $this->TabelModel->getPotency('ups')->result();
		$data['recti'] = $this->TabelModel->getPotency('recti')->result();
		$data['penerangan'] = $this->TabelModel->getPotency('penerangan')->result();
		$data['warning'] = $this->TabelModel->getPotency('warning')->result();
		$data['support'] = $this->TabelModel->getPotency('support')->result();

		// print_r($data);
		$this->load->view('potency', $data);
	}

	public function test()
	{
		// print_r($data);
		$this->load->view('test_Page');
	}

}
