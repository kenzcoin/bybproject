<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class cari_controller extends CI_Controller {

    

    public function cariaction()
    {        
        $s=$this->input->post('search');
        $this->Model->cari($s);
    }
   
}