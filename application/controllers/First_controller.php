<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class First_controller extends CI_Controller {

	
	public function __construct() {
        parent::__construct();
        $st=$this->session->userdata('status');
        if ($st!=='login'){
            header('location:'.base_url().'Premain_controller');
        }
	}

	public function index()
	{
		$data['content']='home';
		$data['sidebar']='sidebar';
        $this->load->view('main',$data);
	}
// Tombol (cari dan daftar) di tampilan premain *****************************************
	public function customer()
	{
		$data['content']='customer';
		$this->load->view('premain',$data);
	}
	// public function daftarcustomer()
	// {
	// 	$data['content']='daftarcustomer';
	// 	$this->load->view('premain',$data);
	// }
// Tombol daftar di daftar customer *****************************************
	public function customerbaru()
    {
		$sess = $this->session->userdata;

		$data['CUSTOMER_EMAIL']=$this->input->post('emailCustomer');
		$data['CUSTOMER_PHONE']=$this->input->post('notelCustomer');
		$data['CUSTOMER_NAME']=$this->input->post('namaCustomer');
		$data['CUSTOMER_NAT_ID']=$this->input->post('ktpCustomer');
		$data['NO_REKENING']=$this->input->post('norekCustomer');
		
		// $data['COMPANY_ID']= $sess['company'];

		// $this->Model->selectwhere('m_user',array ('username'=>$username,'password'=>$password))
		// echo "<pre>";
		// print_r($data);
		// echo "</pre>";

		$this->Model->insert('m_customer',$data);
        header('location:'.base_url().'Premain_controller');
    }

}
