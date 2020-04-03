<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>微博系统</title>
<style>
#operation{
	font-size:14px;
}
.tip{
	color:red;
}
</style>
</head>
<body>
	<div id="title" align="center"><h1>欢迎进入微博系统</h1></div>
	<div id="operation">
		<div id="link_student" align="center">
		  <form id="form1" name="form1" method="post" action="login">
		    <table id="loginForm" width="629" height="207" cellpadding="0" cellspacing="0"> 
              <tr>
                <td colspan="3">
					<div align="center"><span class="tip">登录失败，请检查用户名或者密码!!!</span>
			    </div></td>
              </tr>
			  <tr>
                <td width="235"><div align="right">登录用户：</div></td>
                <td width="231"><input type="text" name="username" style="width:200px;"/></td>
                <td width="161">
					<span class="tip">用户名不能为空</span>
				</td>
              </tr>
              <tr>
                <td><div align="right">用户密码：</div></td>
                <td><input type="text" name="pass" style="width:200px;"/></td>
                <td><span class="tip">用户密码不能为空</span></td>
              </tr>
              <tr>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input type="submit" name="Submit" value="登录" />
                <input type="submit" name="Submit2" value="取消" /></td>
                <td>&nbsp;</td>
              </tr>
            </table>
          </form>
		</div>
	</div>
	
</body>
</html>
