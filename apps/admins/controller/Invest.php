<?php

namespace app\admins\controller;
use think\Controller;
use think\Db;
use think\Request;
use think\Query;
use think\View;


class Invest extends controller{
    function _construct(){
        parent::_construct();
        $this -> view -> replace(['__PUBLIC__' => '/static',]);
    }
    public function index(){
        return $this->fetch('invest_list');
    }
}