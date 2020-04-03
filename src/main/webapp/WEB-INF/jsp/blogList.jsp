<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>日志列表</title>
<link rel="stylesheet" href="dist/css/bootstrap.min.css" />
<script type="text/javascript" src="dist/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="js/bootstrap-table.css" />
<script type="text/javascript" src="js/bootstrap-table.js"></script>
<script type="text/javascript" src="js/bootstrap-table-zh-CN.js"></script>
</head>
<script type="text/javascript">
$(function(){
	$("#member").bootstrapTable({
		//跨域访问 
		url:"blogList2",
		
		striped:true, //是否显示斑马线效果
		sortName:"id", //排序的列名
		sortOrder:"desc", //排序的方式
		pagination:true, //是否分页
		pageList:[3,5,6], //每页显示的条数，可选值
		pageSize:3,//当前每页显示的条数
		
		showColumns:true, //是否显示所有列，供选择
		showRefresh:true, //是否显示刷新按钮
		search:true,//	是否启用搜索框
		
		toolbar:"#toolbar",//工具栏
		
		columns:[//列的定义
		  {checkbox:true},
		  {title:"编号",field:"id"},
		  {title:"标题",field:"title"},
		  {title:"时间",field:"ctime"},
		  {title:"图片",field:"pic",formatter:function(value,row,index){
		  	 return "<span style='color:red'>【"+value+"】</span>";
		  },},
		  {title:"操作",field:"operation",formatter:function(value,row,index){
				return "<div class='btn-group'><button type='button' class='btn btn-default' style='cursor:pointer' onclick='update("+row.id+")'>修改</button><button type='button' class='btn btn-default'>删除 </button></div>";
			  },},
		  
		],
	});
});

//修改
function update(id){
    /*$("#updateUI").modal({
    	remote:"member/updateUI?id="+id,
    	show:true,
    });*/
	console.log(id)
}
</script>
<body>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">查询</div>
			<div class="panel-body">
				<div class="input-group">
					<span class="input-group-addon">关键字 ：</span> <input
						class="form-control"> <span class="input-group-btn">
						<button class='btn btn-default'>搜索</button>
					</span>
				</div>
			</div>
		</div>


		<table id="member"></table>


		<div id="toolbar" class="btn-group">
			<button class='btn btn-default'>
				<spand class="glyphicon glyphicon-plus"></spand>
				添加
			</button>

			<button class='btn btn-default'>
				<spand class="glyphicon glyphicon-pencil"></spand>
				修改
			</button>

			<button class='btn btn-default'>
				<spand class="glyphicon glyphicon-trash"></spand>
				删除
			</button>
		</div>
	</div>
</body>
</html>