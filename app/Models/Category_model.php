<?php
 if (!defined('BASEPATH'))
   exit('No direct script access allowed');

class Category_model extends CI_Model  {

    public function getcategory(){

        $this->db->select('*');
        $this->db->from('categories');
        $this->db->where('category_parent_id', 0);

        $parent = $this->db->get();

        $categories = $parent->result();
        $i=0;
        foreach($categories as $main_cat){

            $categories[$i]->sub = $this->sub_category($main_cat->category_id);
            $i++;
        }
        return $categories;
    }

    public function sub_category($id){

        $this->db->select('*');
        $this->db->from('categories');
        $this->db->where('category_parent_id', $id);

        $child = $this->db->get();
        $categories = $child->result();
        $i=0;
        foreach($categories as $sub_cat){

            $categories[$i]->sub = $this->sub_category($sub_cat->category_id);
            $i++;
        }
        return $categories;
    }

}

?>