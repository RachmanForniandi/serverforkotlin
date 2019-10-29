<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ServerApi extends CI_Controller {

    public function addUser(){
        $name = $this->input->post('name');
        $alamat = $this->input->post('alamat');
        $email = $this->input->post('email');
        $password = $this->input->post('password');

        $this->db->where('email_user',$email);

        $q = $this->db->get('tb_user');

        if($q -> num_rows()>0){
            $data['message'] = "Email sudah terdaftar. Silahkan mulai dari kredential baru";
            $data['status'] = 404;
        }else{
            $simpan['name_user']= $name;
            $simpan['email_user']= $email;
            $simpan['password_user']=md5($password) ;
            $simpan['alamat_user']= $alamat;

            
            $q = $this->db->insert('tb_user',$simpan);

            if($q){
                $data['message'] = "Register berhasil";
                $data['status'] = 200;
            }else{
                $data['message'] = "Register gagal. Silahkan coba lagi.";
                $data['status'] = 404;
            }
        }

        echo json_encode($data);
    }

    //fungsi get all data in table
    public function getDataUser(){
        $q = $this->db->get('tb_user');
        if($q -> num_rows() > 0){
            $response['pesan'] = "Data Tersedia.";
            $response['status'] = 200;
            $response['user'] = $q -> row();
            $response['user'] = $q -> result();
        }else{
            $response['pesan'] = 'Data tidak ditemukan';
            $response['status'] =  404;
        }
        echo json_encode($response);
    }

    public function updateUser(){
        $id = $this->input->post('id');
        $name = $this->input->post('name');
        $alamat = $this->input->post('alamat');
        $email = $this->input->post('email');
        $password = $this->input->post('password');

        $this->db->where('id_user',$id);
        $data['name_user']= $name;
        $data['alamat_user']= $alamat;
        $data['email_user']= $email;
        $data['password_user']=md5($password) ;
        
        $q = $this->db->update('tb_user',$data);

        if($q){
            $response['pesan'] = "Update data user berhasil";
            $response['status'] = 200;
        }else{
            $response['pesan'] = "Update data user gagal";
            $response['status'] = 404;
        }
        
        echo json_encode($response);
    }

    public function deleteUser(){
        $id = $this->input->post('id');
        $this->db->where('id_user',$id);

        $status = $this->db->delete('tb_user');

        if($status == true){
            $response['pesan'] = "Hapus data user berhasil";
            $response['status'] = 200;
        }else{
            $response['pesan'] = "Hapus data user gagal";
            $response['status'] = 404;
        }
        
        echo json_encode($response);
    }

}
