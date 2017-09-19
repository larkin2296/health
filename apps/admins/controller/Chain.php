<?php
namespace app\admins\controller;
//namespace Ali;
use think\Controller;
use think\Db;
use think\Request;
use think\Query;
use think\View;
class Chain extends Controller{
    public function index(){
        return view('chain');
    }
}