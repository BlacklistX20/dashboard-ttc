<?php
defined('BASEPATH') OR exit('No direct script access allowed');

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
		$this->load->view('potency');
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
