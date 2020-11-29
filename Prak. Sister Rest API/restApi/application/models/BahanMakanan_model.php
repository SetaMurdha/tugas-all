<?php 

class BahanMakanan_model extends CI_Model{

	public function getBahanMakanan($id = null){

		if($id === null){
			return $this->db->get('BahanMakanan')->result_array();
		} else{

			return $this->db->get_where('BahanMakanan',['id'=>$id])->result_array();
				
		}

		
	}

	public function deleteBahanMakanan($id){

		$this->db->delete('BahanMakanan',['id'=>$id]);
		return $this->db->affected_rows();

	}

	public function createBahanMakanan($data){

		$this->db->insert('BahanMakanan',$data);
		return $this->db->affected_rows();

	}

	public function updateBahanMakanan($data,$id){

		$this->db->update('BahanMakanan',$data,['id'=>$id]);

		return $this->db->affected_rows();

	}

}