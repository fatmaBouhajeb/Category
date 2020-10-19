<?php

namespace App\Controllers;
class Home extends BaseController
{
    function construct()
    {
        parent::__construct();
        $this->load('app\Models\Category_model');

    }

    public function index()
    {
        $this->load->model('Category_model');
        $this->load->database();
        $data = $this->Category_model->getcategory();
        print_r($data);
    }

    public function view($page,$number,$per_page)
    {
        return $page."    ".$number."     ".$per_page;
    }

}
