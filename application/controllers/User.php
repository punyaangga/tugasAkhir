<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
    }

    public function index()
	{        
		$this->load->view('login');
	}

    public function login(){
        $username=$this->input->post('username');
        $password=md5($this->input->post('password'));
        
        $cekUser = $this->User_model->login($username,$password);

        if($cekUser != FALSE){
            foreach ($cekUser as $apps) {
                 $session_data = array(
                        'user_id'   => $apps->id,
                        'user_name' => $apps->username,
                        'user_pass' => $apps->password,
                        'user_nama' => $apps->nama
                    );
                    //set session userdata
                    $this->session->set_userdata($session_data);

                    redirect('Dashboard');
            }
        }else {
            $url = base_url('User');
            echo "<script>alert('Maaf Username dan Password yang anda masukan salah');window.location='$url'</script>";
        }
    }

    public function logout(){
        $this->session->sess_destroy();
        redirect('User');
    }
}

?>