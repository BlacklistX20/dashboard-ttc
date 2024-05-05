<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *
 * @property  TabelModel  $TabelModel
 * @property  input $input
 * @property  session $session
 * @property  upload $upload
 *
 */

class Upload extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->helper(array('form'));
        $this->load->model('TabelModel');
    }

    public function space()
    {
        $lt2 = $this->TabelModel->getLayout('lantai2')->last_row('array');
        $lt3 = $this->TabelModel->getLayout('lantai3')->last_row('array');
        $lt4 = $this->TabelModel->getLayout('lantai4')->last_row('array');
        $lt5 = $this->TabelModel->getLayout('lantai5')->last_row('array');

        $dateLt2 = date_create($lt2['upload_at']);
        $formatDate2 = date_format($dateLt2, "d-m-Y");
        $dateLt3 = date_create($lt3['upload_at']);
        $formatDate3 = date_format($dateLt3, "d-m-Y");
        $dateLt4 = date_create($lt4['upload_at']);
        $formatDate4 = date_format($dateLt4, "d-m-Y");
        $dateLt5 = date_create($lt5['upload_at']);
        $formatDate5 = date_format($dateLt5, "d-m-Y");

        $data = array(
            'lantai2' => $formatDate2,
            'lantai3' => $formatDate3,
            'lantai4' => $formatDate4,
            'lantai5' => $formatDate5,
        );
        // print_r($data);

        $this->load->view('space', array('error' => ' ', 'data' => $data));
    }

    public function lt2()
    {
        $config['upload_path']   = './asset/layout/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size']      = 2048;
        $config['overwrite']     = true;
        $config['file_name']     = 'layout_lt2'; // Set the file name here

        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if (!$this->upload->do_upload('lantai2')) {
            $error = array('error' => $this->upload->display_errors());
            $this->load->view('space', $error);
        } else {
            $tgl = date('Y-m-d');

            // echo $tgl;

            $data = array(
                'upload_at' => $tgl,
            );
            $this->TabelModel->inputLayout($data, 'lantai2');

            redirect('Upload/space');
        }
    }

    public function lt3()
    {
        $config['upload_path']   = './asset/layout/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size']      = 2048;
        $config['overwrite']     = true;
        $config['file_name']     = 'layout_lt3'; // Set the file name here

        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if (!$this->upload->do_upload('lantai3')) {
            $error = array('error' => $this->upload->display_errors());
            $this->load->view('space', $error);
        } else {
            $tgl = date('Y-m-d');

            // echo $tgl;

            $data = array(
                'upload_at' => $tgl,
            );
            $this->TabelModel->inputLayout($data, 'lantai3');

            redirect('Upload/space');
        }
    }

    public function lt4()
    {
        $config['upload_path']   = './asset/layout/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size']      = 2048;
        $config['overwrite']     = true;
        $config['file_name']     = 'layout_lt4'; // Set the file name here

        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if (!$this->upload->do_upload('lantai4')) {
            $error = array('error' => $this->upload->display_errors());
            $this->load->view('space', $error);
        } else {
            $tgl = date('Y-m-d');

            // echo $tgl;

            $data = array(
                'upload_at' => $tgl,
            );
            $this->TabelModel->inputLayout($data, 'lantai4');

            redirect('Upload/space');
        }
    }

    public function lt5()
    {
        $config['upload_path']   = './asset/layout/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size']      = 2048;
        $config['overwrite']     = true;
        $config['file_name']     = 'layout_lt5'; // Set the file name here

        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if (!$this->upload->do_upload('lantai5')) {
            $error = array('error' => $this->upload->display_errors());
            $this->load->view('space', $error);
        } else {
            $tgl = date('Y-m-d');

            // echo $tgl;

            $data = array(
                'upload_at' => $tgl,
            );
            $this->TabelModel->inputLayout($data, 'lantai5');

            redirect('Upload/space');
        }
    }
}
