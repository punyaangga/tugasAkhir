<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Validate extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model("Validate_model");
		$this->load->model("user_model");
	}

	public function index(){
		// show data in model
		if($this->user_model->cekLogin())
		{
			$data['dataProvinsi'] = $this->Validate_model->showDataProvinsi();
			//load view validate
			$this->load->view('validate',$data);		

		}else{
			redirect("user");
		}
		
	}

	public function totp(){
		if ($this->Validate_model->isNotVerify())redirect(site_url('Validate/validasi'));
		
			//get idUser
			$idUser = $this->session->userdata('user_id');
			//ambil timepstap
			$date = new DateTime();
			$faktorWaktu=$date->getTimestamp();
			//angka acak
			$angkaAcak = rand(00,99);
			//get nomor tps & kode provinsi
			$noTps = $this->session->userdata('noTps');
			$kodeProvinsi = $this->session->userdata('kodeProvinsi');
			//pembuatan secretkey
			$secretKey=$angkaAcak.$noTps.$kodeProvinsi;
			//perhitungan dengan menggunakan rumus TOTP
			$timebased=floor($faktorWaktu/30);
			$secret=$secretKey.$timebased;
			//proses akhir dengan HOTP
			$tokenAsli=hash_hmac('sha256', $timebased, $secretKey);
			$tokenTOTP=substr($tokenAsli,0,6);
			// echo "Ini token yang dikirim ke user = ".$tokenTOTP;
			//insert data kedalam table token
			$data =  array('idUser'=>$idUser,
					'token'=>hash('sha256', $tokenTOTP));
			$proses=$this->Validate_model->token($data);

			// $dataUser = $this->db->query("SELECT * FROM user where id=$idUser limit 1")->result();        
	  //       foreach ($dataUser as $du)
	  //       {            
	  //       	//send token to user
			// 	$userkey = '0ee0ac0645f1';
			// 	$passkey = '29d431a69be16fb2350b7186';
			// 	$telepon = $du->telp;
			// 	$message = 'Kode Token Kamu Adalah : '.$tokenTOTP;
			// 	$url = 'https://console.zenziva.net/wareguler/api/sendWA/';
			// 	$curlHandle = curl_init();
			// 	curl_setopt($curlHandle, CURLOPT_URL, $url);
			// 	curl_setopt($curlHandle, CURLOPT_HEADER, 0);
			// 	curl_setopt($curlHandle, CURLOPT_RETURNTRANSFER, 1);
			// 	curl_setopt($curlHandle, CURLOPT_SSL_VERIFYHOST, 2);
			// 	curl_setopt($curlHandle, CURLOPT_SSL_VERIFYPEER, 0);
			// 	curl_setopt($curlHandle, CURLOPT_TIMEOUT,30);
			// 	curl_setopt($curlHandle, CURLOPT_POST, 1);
			// 	curl_setopt($curlHandle, CURLOPT_POSTFIELDS, array(
			// 	    'userkey' => $userkey,
			// 	    'passkey' => $passkey,
			// 	    'to' => $telepon,
			// 	    'message' => $message
			// 	));
			// 	$results = json_decode(curl_exec($curlHandle), true);
			// 	curl_close($curlHandle);
	  //       }
		
		
		

	 		
		//aksi untuk generate kode selama 30 detik
		$page = $_SERVER['PHP_SELF'];
 		$sec = "30";
 		header("Refresh: $sec; url=$page");
 		echo "<script>alert('Sistem Mengirim Token');</script>";


		$data1['nama'] = $tokenTOTP;
		
 		$this->load->view('token',$data1);
 		// $this->load->view('token');
		
	}

	public function validasi(){
		if($this->user_model->cekLogin())
		{
			$noTps=$this->input->post('noTps');
			$kodeProvinsi=$this->input->post('namaProvinsi');
			
			$proses = $this->Validate_model->validasi($noTps,$kodeProvinsi);
			// $prosesTotp=$this->TokenModel->tokenTotp($noTps,$kodeProvinsi);

		}else{
			redirect("user");
		}
		
	}

	public function validasiToken(){
		$getToken = $this->input->post('kodeToken');
		$idUser = $this->session->userdata('user_id');
		$token = hash('sha256', $getToken);

		$proses = $this->Validate_model->validasiToken($token,$idUser);

	}

	public function voting(){
		if($this->user_model->cekLogin())
		{
			$cekToken = $this->session->userdata('validasiToken');
			if ($cekToken != null) {
				if ($this->Validate_model->isNotVerify())redirect(site_url('Validate/validasi'));
				$this->load->view('voting');
			} else{
				redirect("Dashboard");
			}
			if ($this->Validate_model->isNotVerify())redirect(site_url('Validate/validasi'));
			// $this->load->view('voting');
		}else {
			redirect("user");
		}
	}

	public function pilihan(){

			$pilih1=$this->input->post('pilih1');
			$pilih2=$this->input->post('pilih2');
			$idUser = $this->session->userdata('user_id');
			$data=array('idUser'=>$idUser,
						'pilihan'=>$pilih1.$pilih2);
			$proses = $this->Validate_model->voting($data);

			if (!$proses) {
				$urll= base_url('Dashboard/dataPemilih');
				echo ("<script LANGUAGE='JavaScript'>
    				window.alert('Pilihan Berhasil Di Simpan !');
    				window.location.href='".$urll."';
    			 </script>");
			}else {
				$urll= base_url('Validate/voting');
				echo ("<script LANGUAGE='JavaScript'>
    				window.alert('Pilihan Gagal Di Simpan !');
    				window.location.href='".$urll."';
    			 </script>");
			}
	}

}

?>