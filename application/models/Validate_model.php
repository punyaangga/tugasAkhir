<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Validate_model extends CI_Model{
	public function validasi($noTps,$kodeProvinsi){
		//membuat session kode provinsi dan nomor tps
		$this->session->set_userdata(['noTps' => $noTps]);
		$this->session->set_userdata(['kodeProvinsi' => $kodeProvinsi]);
		//session user
		$idUser = $this->session->userdata('user_id');

		//perlindungan sql injection
		$etps=$this->db->escape_like_str($noTps);
		$ekd=$this->db->escape_like_str($kodeProvinsi);

		$cekNoTps = $this->db->query("SELECT * FROM lokasi where noTPS='$etps' and idPemilih='$idUser'")->num_rows();
		$cekKodeProvinsi = $this->db->query("SELECT * FROM lokasi where kodeProvinsi='$ekd' and idPemilih='$idUser'")->num_rows();

		if ($cekNoTps > 0 && $cekKodeProvinsi > 0) {
			$url= base_url('Validate/totp/1');
			$this->session->set_userdata(['verify' => $etps]);
			echo "<script>window.location='".$url."'</script>";
		}else {
			$urll= base_url('Validate');
			echo ("<script LANGUAGE='JavaScript'>
    				window.alert('Maaf Ada Kesalahan Silakan Coba Lagi !');
    				window.location.href='".$urll."';
    			 </script>");
		
		}
		
	}

	public function showDataProvinsi(){
		$dataProvinsi=$this->db->query("SELECT * FROM provinsi");
		return $dataProvinsi;
	}

	public function isNotVerify(){
		return $this->session->userdata('verify') === null;
	}

	public function token ($data){
		$this->db->insert('token',$data);
	}

	public function validasiToken($token,$idUser){
		$cekToken = $this->db->query("SELECT * FROM token where idUser='$idUser' and token='$token' ORDER BY idToken DESC LIMIT 1 ")->num_rows();
		if ($cekToken > 0) {
			$url= base_url('Validate/voting');
			$ok=$token;
			$this->session->set_userdata(['validasiToken' => $ok]);
			echo "<script>window.location='".$url."'</script>";
		}else {
			$urll= base_url('Validate/totp');
			echo ("<script LANGUAGE='JavaScript'>
    				window.alert('Maaf Token Salah Silakan Coba Lagi !');
    				window.location.href='".$urll."';
    			 </script>");
		
		}
	}
	public function voting($data){
		$this->db->insert('voting',$data);
	}

	public function cekLamaTotp(){
		$dataProvinsi=$this->db->query("SELECT * FROM token ORDER BY idToken DESC LIMIT 1");
		return $dataProvinsi;
	}
}
?>