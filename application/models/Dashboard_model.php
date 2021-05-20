<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model
{
	public function getDataPemilih(){
		$username = $this->session->userdata('user_name');

		$dataPemilih = $this->db->query("SELECT * FROM user where username=$username limit 1");
		return $dataPemilih;
	}
}