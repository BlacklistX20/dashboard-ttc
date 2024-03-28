<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 *  @property TabelModel $TabelModel 
 */


class Pages extends CI_Controller {

	public function __construct(){
		parent::__construct();

      $this->load->model('TabelModel');
	}

	public function index()
	{
		$this->load->view('index');
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
		$data['electric'] = $this->TabelModel->getDataPotency('electricity')->result();
		$data['cooling'] = $this->TabelModel->getDataPotency('cooling')->result();
		$data['fire'] = $this->TabelModel->getDataPotency('fire')->result();
		$data['angkut'] = $this->TabelModel->getDataPotency('angkut')->result();
		$data['ups'] = $this->TabelModel->getDataPotency('ups')->result();
		$data['recti'] = $this->TabelModel->getDataPotency('recti')->result();
		$data['penerangan'] = $this->TabelModel->getDataPotency('penerangan')->result();
		$data['warning'] = $this->TabelModel->getDataPotency('warning')->result();
		$data['support'] = $this->TabelModel->getDataPotency('support')->result();

		// print_r($data);
		$this->load->view('potency', $data);
	}

	public function space()
	{
		$this->load->view('space');
	}

	public function pue()
	{
		$this->load->view('pue');
	}
}
