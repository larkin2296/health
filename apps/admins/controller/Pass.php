<?php

namespace app\admins\controller;
use think\Controller;
use think\Db;
use think\Request;
use think\Query;
use think\View;
use think\cache\driver\Redis;


class Pass extends controller{
    function _construct(){
        parent::_construct();
        $this -> view -> replace(['__PUBLIC__' => '/static',]);
    }
    public function index(){
        return $this->fetch('pass_index');
    }
    public function pass_pro(){
        $config = [
            'host'       => '47.93.61.134',
            'port'       => 6379,
            'password'   => '',
            'select'     => 0,
            'timeout'    => 0,
            'expire'     => 0,
            'persistent' => false,
            'prefix'     => '',
        ];

        $Redis=new Redis($config);
        //$Redis->set("2","test");
//        dump($Redis->get(2));
        $page = 0;
        $total = DB::name("health_chain")
            //->column('chain_id');
            ->count();//总记录数
        $pageSize = 6; //每页显示数
        $totalPage = ceil($total/$pageSize); //总页数

        $startPage = $page*$pageSize; //开始记录
        //构造数组
        $arr['total'] = $total;
        $arr['pageSize'] = $pageSize;
        $arr['totalPage'] = $totalPage;
        $query = DB::name("health_chain")
            //->group('chain_num')
            ->limit($startPage,$pageSize)
            ->select();//查询分页数据
        //$row=mysql_fetch_array($query);
        $i = 0;
        foreach($query as $key=>$val){
            $arr['list'][] = array(
                'chain_user' => $val['chain_user'],
            );
        }
        //echo json_encode($arr); //输出JSON数据
        return $this->fetch();
    }
    public function pass_result($doc){
        $check['chain_user|chain_department|chain_content'] = array('like','%'.$doc.'%');
        $arr = DB::name('health_chain')
            ->where($check)
            ->paginate(5,false, [
                'query'=> array('doc'=>$doc),
            ]);
        $page = $arr->render();
        $this->assign('lists', $arr);
        $this->assign('page', $page);
        $this->assign('param_1', $doc);
        return $this->fetch('pass_result');
    }
    public function search_pass(){

    }
    public function ajaxs(){
        $page = intval($_POST['pageNum']); //当前页
        $res = array();
        $res_1=array();
        $arr = $_POST['arr'];
        $arr = explode('&',$arr);
        foreach($arr as $val){
            $get = explode('=',$val);
            if(!empty($get[1])){
                if($get[0] == 'chain_department' || $get[0] == 'chain_lesion' || $get[0] == 'chain_num'){
                    $res[$get[0]] = array('like','%'.$get[1].'%');
                }else if($get[0] == 'date_start'){
                    $res['chain_time'] = array('>=',strtotime($get[1]));
                }else if($get[0] == 'date_end'){
                    $res['chain_time'] = array('<',strtotime($get[1]));
                }else{
                    $res[$get[0]] = $get[1];
                }
            }
        }
        $res = array_filter($res);
        foreach($res as $key=>$value){
            $res_1['query'][$key] = $value;
        }
        $total = DB::name('health_chain')
            ->where($res)
            ->count();
        //->group('chain_num')
        //->count('distinct chain_id');
        $pageSize = 6; //每页显示数
        $totalPage = ceil($total/$pageSize); //总页数
        $startPage = $page*$pageSize; //开始记录

        //构造数组
        $arr['total'] = $total;
        $arr['pageSize'] = $pageSize;
        $arr['totalPage'] = $totalPage;
        $data= DB::name('health_chain')
            ->where($res)
            //->group('chain_num')
            ->limit("$startPage,$pageSize")->select();
        foreach($data as &$v){
            $v['chain_sex'] = ($v['chain_sex'] == 0)?'男':'女';
            $v['archives_modify'] = ($v['archives_modify'] == 0)?'未修改':'已修改';
        }
        $arr['list'] = $data;
        echo json_encode($arr); //输出JSON数据
    }
    public function show_hash(){
        $arr = array();
        $id = $_POST['id'];
        $chainMsg = Db::table('health_chain')->where(['chain_id'=>$id])->find();
        $chainStr = implode($chainMsg);
        $chainHash = Db::name('health_newchain')->where(['chain_id'=>$id])->select();
        foreach($chainHash as &$val){
            $res = password_verify ($chainStr,$val['chain_hash']);
            //if($res == true){
            $name = Db::name('health_user')->where(['id'=>$val['admin_id']])->column('username');
            $val['admin_name'] = $name;
            $time = date('Y-m-d H:i:s',$val['update_time']);
            $val['update_time'] = $time;
                $arr[] = $val;
           // }
        }
        return $arr;

        //$res = password_verify ( $chainStr , string $hash )
    }
}