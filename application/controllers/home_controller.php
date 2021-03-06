<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class home_controller extends CI_Controller {

	public function __construct() {
        parent::__construct();
        $st=$this->session->userdata('status');
        if ($st!=='login'){
            header('location:'.base_url());
        }
	}

	public function index()
	{
		$data['content']='prehome';
        $this->load->view('premain',$data);
	}
	public function home()
	{
		$sess = $this->session->userdata;
		foreach ($sess as $key => $value ) 
		{
			$data[$key]= $value;
		}
		$data['content']='home';
		$data['sidebar']='sidebar';
        $this->load->view('main',$data);
	}
     public function showdata()
    {        
        $d=$this->input->post('data');
        $this->Model->data($d);
    }
    
// side bar menu PPOB *****************************************
	public function tagihan()
    {
		$sess = $this->session->userdata;
		foreach ($sess as $key => $value ) {
			$data[$key]= $value;
		}
		// var_dump($sess);
		// var_dump($data);
		// exit;
		$data['content']='ppob/tagihan';
		$data['sidebar']='sidebar';
		$this->load->view('main',$data);
	}
	public function telkom()
    {
		$productIDS = $this->db->query("SELECT * FROM m_list_produk WHERE SUBKATEGORI_ID = 'TELKOM'")->result();
		$data['product_ids'] = $productIDS;
		$data['content']='ppob/telkom';
		$data['sidebar']='sidebar';
		$this->load->view('main',$data);
	}
	public function pascabayar()
    {
		$productIDS = $this->db->query("SELECT * FROM m_list_produk WHERE SUBKATEGORI_ID = 'PASCABAYAR'")->result();
		$data['product_ids'] = $productIDS;
		$data['content']='ppob/pascabayar';
		$data['sidebar']='sidebar';
        $this->load->view('main',$data);
	}
	public function tv()
    {		
		// $productIDS = $this->db->query("SELECT * FROM m_list_produk WHERE SUBKATEGORI_ID = 'TV'")->result();	
		// $data['product_ids'] = $productIDS;
		$productIDS = $this->db->query("SELECT DISTINCT PRODUCT_ID FROM m_list_produk WHERE SUBKATEGORI_ID = 'TV'")->result();
		$data['product_ids'] = $productIDS;
		$data['content']='ppob/tv';
		$data['sidebar']='sidebar';
		$this->load->view('main',$data);
	}
		public function subtv()
		{
			$PRODUCT_ID = $this->input->post('PRODUCT_ID'); // kiriman dari ajax
			$subKategories = $this->Model->getSubtv($PRODUCT_ID);
			if(count($subKategories)>0)
			{
				$selectbox = '';
				$selectbox .= '<option value="">Pilih</option>';
				foreach ($subKategories as $subKategori){
					$selectbox .='<option value="'.$subKategori->PRODUCT_CODE.'">'.$subKategori->SUBPRODUCT_ID.'</option>';
				}
				echo json_encode($selectbox);
			}
		}

	public function finance()
    {
		$productIDS = $this->db->query("SELECT * FROM m_list_produk WHERE SUBKATEGORI_ID = 'FINANCE'")->result();
		$data['product_ids'] = $productIDS;
		$data['content']='ppob/finance';
		$data['sidebar']='sidebar';
        $this->load->view('main',$data);
	}
	public function pdam()
    {
		$productIDS = $this->db->query("SELECT * FROM m_list_produk WHERE SUBKATEGORI_ID = 'PDAM'")->result();
		$data['product_ids'] = $productIDS;
		$data['content']='ppob/pdam';
		$data['sidebar']='sidebar';
        $this->load->view('main',$data);
	}
	public function asuransi()
    {
		$productIDS = $this->db->query("SELECT * FROM m_list_produk WHERE SUBKATEGORI_ID = 'ASURANSI'")->result();
		$data['product_ids'] = $productIDS;
		$data['content']='ppob/asuransi';
		$data['sidebar']='sidebar';
        $this->load->view('main',$data);
	}
	public function pln()
    {
		$productIDS = $this->db->query("SELECT * FROM m_list_produk WHERE SUBKATEGORI_ID = 'PLN'")->result();
		$data['product_ids'] = $productIDS;
		$data['content']='ppob/pln';
		$data['sidebar']='sidebar';
        $this->load->view('main',$data);
	}
// side bar menu Pembelian *****************************************
	public function pulsa()
	{
		$data['content']='pembelian/pulsa';
		$data['sidebar']='sidebar';
		$this->load->view('main',$data);
	}
	public function data()
	{
		$data['content']='pembelian/data';
		$data['sidebar']='sidebar';
		$this->load->view('main',$data);
	}
	public function vouchergames()
	{
		$data['content']='pembelian/vouchergames';
		$data['sidebar']='sidebar';
		$this->load->view('main',$data);
	}
	public function tokenpln()
	{
		$data['content']='pembelian/tokenpln';
		$data['sidebar']='sidebar';
		$this->load->view('main',$data);
	}		
// side bar menu Travel *****************************************
	public function pesawat()
	{
		$data['content']='travel/pesawat';
		$data['sidebar']='sidebar';
		$this->load->view('main',$data);
	}
	public function kereta()
	{
		$data['content']='travel/kereta';
		$data['sidebar']='sidebar';
		$this->load->view('main',$data);
	}
	public function hotel()
	{
		$data['content']='travel/hotel';
		$data['sidebar']='sidebar';
		$this->load->view('main',$data);
	}
}