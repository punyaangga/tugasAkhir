<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model
{
	function cekLogin(){
		return $this->session->userdata('user_id');
	}

    function login($username,$password){
    	$eUsername=$this->db->escape_like_str($username);
    	$ePassword=$etps=$this->db->escape_like_str($password);
        $query = $this->db->query("SELECT * FROM user where username= '$eUsername' and password = '$ePassword' ");
        if ($query->num_rows() == 0) {
            return FALSE;
        } else {
            return $query->result();
        }
    }
}