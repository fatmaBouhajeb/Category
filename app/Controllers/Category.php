<?php
//defined('BASEPATH') OR exit('No direct script access allowed');
namespace App\Controllers;

class Category extends BaseController {


    /**
     * Constructor of Controller
     *
     * @return Response
     */
    public function __construct() {
        parent::__construct();
        $this->load->model('Category_model');
    }

    public function categories(){

        $data = $this->category_model->getcategory();
        echo "<pre>";
        print_r($data);
        echo "</pre>";
    }
}

?>