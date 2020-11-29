<?php  


use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Pertanian extends REST_Controller {

	public function __construct(){

		parent::__construct();
		$this->load->model('Pertanian_model');

	}

	public function index_get(){

		$id = $this->get('id');
		if($id === null){

			$Pertanian = $this->Pertanian_model->getPertanian();
		
		} else{

			$Pertanian = $this->Pertanian_model->getPertanian($id);
		
		}

		if($Pertanian){
			$this->set_response([
                'status' => true,
                'data' => $Pertanian
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
			if($this->Pertanian_model->deletePertanian($id)>0){

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
			'NamaBarang' => $this->post('NamaBarang'),
			'JenisBarang' => $this->post('JenisBarang'),
			'HargaBarang' => $this->post('HargaBarang'),
		];

		if($this->Pertanian_model->createPertanian($data)>0){

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
			'NamaBarang' => $this->put('NamaBarang'),
			'JenisBarang' => $this->put('JenisBarang'),
			'HargaBarang' => $this->put('HargaBarang'),
		];

		if($this->Pertanian_model->updatePertanian($data, $id)>0){

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