<?php

class news extends Controller {
        
        public function __construct() {
                parent::__construct();
        }

        public function index() {
			$DB = $this->load('mysql',true);//数据库类
			$Func = $this->load('func',false);//分页函数类//获取翻页列表。
			$page = intval($_GET['pn']) ? intval($_GET['pn']) :1;
			//获取总记录数。
			$totalnum = array();
			$query = mysql_query("SELECT count(*) FROM news WHERE nstatus=1 and ntype=1");
			$num = mysql_fetch_row($query);
			$totalnum = $num[0];
			//计算总页数。
			$limit = 10;//每页显示的数量。
			$totalpages = ceil($totalnum/$limit);
			
			$data['news'] = $DB->selectAll('news', "nid,ntitle,ninfor,ncreateTime", " nstatus=1 and ntype=1 and nid>0 order by nid desc", ($page-1)*$limit.','.$limit);
			$data['page'] = $Func->page($totalnum,$limit);
			
			$data['ntype'] = 1;
			$data['hotnews'] = $DB->selectAll('news', "nid,ntitle,ntName", 'nstatus=1 order by nid desc', "13");
			$data['hotgames'] = $DB->selectAll('games', "*", 'status=1 and isHome=1 order by id desc', "3");
			$data['games'] = $DB->selectAll('games', "*", 'status=1 order by id desc', "6");
			
			
			$data['head'] = 'news';
			$this->showTemplate('news', $data); 
        }
		
      
		
		
		public function newsDetail() {
			$DB = $this->load('mysql',true);//数据库类
			
			$nid = $_GET['nid']?$_GET['nid']:'';
			$data['data'] = $DB->selectRow('news', "*", "nid='$nid'");
			$data['hotnews'] = $DB->selectAll('news', "nid,ntitle,ntName", 'nstatus=1 order by nid desc', "13");
			
			$data['pre'] = $DB->selectRow('news', "nid,ntitle", "nid<'$nid' and nstatus=1 order by nid desc limit 1");
			$data['next'] = $DB->selectRow('news', "nid,ntitle", "nid>'$nid' and nstatus=1 order by nid asc limit 1");
			$data['games'] = $DB->selectAll('games', "*", 'status=1 order by id desc', "6");
			
			$data['head'] = 'news';
			$this->showTemplate('newsDetail', $data);
        }
		
		
		
}

