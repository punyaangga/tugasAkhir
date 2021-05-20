<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller { 
	public function __construct(){
        parent::__construct();
        $this->load->model('User_model');
        $this->load->model('Dashboard_model');
    }

	public function index(){
		redirect('Dashboard/dataPemilih');
	}
	public function dataPemilih(){
		if ($this->User_model->cekLogin()) {
			$data['dataPemilih'] = $this->Dashboard_model->getDataPemilih();
			$this->load->view('dashboard',$data);	
		} else {
			redirect('User');
		}
		
	}
}

?>