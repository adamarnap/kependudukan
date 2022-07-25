<?php 
defined('BASEPATH')OR exit('No direct script access allowed');

class M_ronda extends CI_Model{

    public function Tambah_ronda($data){
        $this->db->insert('ronda',$data);
    }

    public function Tampil_ronda($table){
        return $this->db->get($table);
    }

    public function Hapus_data_ronda($data, $table){
        $this->db->where($data);
        $this->db->delete($table);
    }

    public function Edit_data_ronda($where, $table){
        return $this->db->get_where($table,$where);
        
    }

    public function Update_data_ronda($where,$data,$table){
        $this->db->where($where);
        $this->db->update($table,$data);
    }
}