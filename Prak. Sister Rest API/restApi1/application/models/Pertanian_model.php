<?php 

class Pertanian_model extends CI_Model{

	public function getPertanian($id = null){

		if($id === null){
			return $this->db->get('kebutuhanpertanian')->result_array();
		} else{

			return $this->db->get_where('kebutuhanpertanian',['id'=>$id])->result_array();
				
		}

		
	}

	public function deletePertanian($id){

		$this->db->delete('kebutuhanpertanian',['id'=>$id]);
		return $this->db->affected_rows();

	}

	public function createPertanian($data){

		$this->db->insert('kebutuhanpertanian',$data);
		return $this->db->affected_rows();

	}

	public function updatePertanian($data,$id){

		$this->db->update('kebutuhanpertanian',$data,['id'=>$id]);

		return $this->db->affected_rows();

	}

}