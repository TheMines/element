<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人日志列表</title>
</head>
<style>
* {
	font-size: 12px;
}
</style>
<BODY>
	<center>
		<h1 style="font-size: 24px;">个人日志列表</h1>
	</center>
	<div id="select_list">
		<div style="margin-left: 250px;">
			标题：<input type="text" />&nbsp;&nbsp;&nbsp; 内容：<input type="text" />&nbsp;&nbsp;&nbsp;
			开始时间：<input type="text" />&nbsp;&nbsp;&nbsp; 结束时间：<input type="text" />&nbsp;&nbsp;&nbsp;
			<input type="button" value="查询" /> <br>
			<br>
			<br>
			<br>
		</div>
		<table id="content" width="780" border="1" cellspacing="1"
			align="center">
			<thead>
				<tr>
					<th>编号</th>
					<th>标题</th>
					<th>内容</th>
					<th>时间</th>
					<th>发表者</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${blogs}" var="blog">
					<tr align="center">
						<td>${blog.id}</td>
						<td>${blog.title}</td>
						<td>${blog.context}</td>
						<td>${blog.ctime}</td>
						<td>${user.user_name}</td>
						<td><a href="findblog1.html">查看</a>&nbsp;&nbsp;</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<table align="center">
			<tr>
				<td><a href="saveblog.html">添加新日志</a> &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="main.html">返回主页</a></td>
			</tr>
		</table>
		<table align="center">
			<tr>
				<td><a href="">[1]</a><a href="">[2]</a><a href="">[3]</a></td>
			</tr>
		</table>

	</div>
</BODY>
</html>