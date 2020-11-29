<?php  


use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class bahanMakanan extends REST_Controller {

	public function __construct(){

		parent::__construct();
		$this->load->model('BahanMakanan_model');

	}

	public function index_get(){

		$id = $this->get('id');
		if($id === null){

			$makanan = $this->BahanMakanan_model->getBahanMakanan();
		
		} else{

			$makanan = $this->BahanMakanan_model->getBahanMakanan($id);
		
		}

		if($makanan){
			$this->set_response([
                'status' => true,
                'data' => $makanan
            ], REST_Controller::HTTP_OK);
		} else{
			$this->set_response([
                'status' => false,
                'message' => 'id_not_found'
            ], REST_Controller::HTTP_NOT_FOUND);
		}

	}

	public function index_delete(){
		$id = $this->delete('id');
		if($id === null){
			$this->set_response([
                'status' => false,
                'message' => 'id_not_found'
            ], REST_Controller::HTTP_BAD_REQUEST);
		} else{
			if($this->BahanMakanan_model->deleteBahanMakanan($id)>0){

				$this->set_response([
                'status' => true,
                'id' => $id,
                'message' => 'deleted'
            ], REST_Controller::HTTP_NO_CONTENT);

			} else {

				$this->set_response([
                'status' => false,
                'message' => 'id_not_found'
            ], REST_Controller::HTTP_BAD_REQUEST);

			}
		}
	}

	public function index_post(){
		$data = [
			'Nama' => $this->post('Nama'),
			'JenisMakanan' => $this->post('JenisMakanan'),
			'MasaTahan' => $this->post('MasaTahan'),
		];

		if($this->BahanMakanan_model->CreateBahanMakanan($data)>0){

			$this->set_response([
                'status' => true,
                'message' => 'new data created'
            ], REST_Controller::HTTP_CREATED);

		} else{

			$this->set_response([
                'status' => false,
                'message' => 'Failed Create'
            ], REST_Controller::HTTP_BAD_REQUEST);

		}
	}

	public function index_put(){
		$id = $this->put('id');
		$data = [
			'Nama' => $this->put('Nama'),
			'JenisMakanan' => $this->put('JenisMakanan'),
			'MasaTahan' => $this->put('MasaTahan'),
		];

		if($this->BahanMakanan_model->UpdateBahanMakanan($data, $id)>0){

			$this->response([
                'status' => true,
                'message' => 'new data Updated'
            ], REST_Controller::HTTP_NO_CONTENT);

		} else{

			$this->response([
                'status' => false,
                'message' => 'Failed Update'
            ], REST_Controller::HTTP_BAD_REQUEST);

		}
	}

}