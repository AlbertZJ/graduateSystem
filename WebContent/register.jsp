<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册界面</title>
</head>
<body>
<center>
	<font face="楷体" size="6" color="#000">注册界面</font>
	<form action = "adduser.jsp" method = "post" onsubmit = "return validate()">
  	<table width="300" height = "180" border="5" bordercolor="#A0A0A0">
  	  <tr>
		<th>用户编号：</th>
		<td><input type="text" name="userid" value="输入16个字符以内" maxlength = "16" onfocus = "if(this.value == '输入16个字符以内') this.value =''"></td>
 	  </tr>
  	  <tr>
		<th>用户名：</th>
		<td><input type="text" name="username" value="输入16个字符以内" maxlength = "16" onfocus = "if(this.value == '输入16个字符以内') this.value =''"></td>
 	  </tr>
 	  <tr>
 		<th>密码：</th>
 		<td><input type="text" name="password" value="输入20个字符以内" maxlength = "20" onfocus = "if(this.value == '输入20个字符以内') this.value =''"></td>
 	  </tr>
 	  <tr>
 		<th>确认密码：</th>
 		<td><input type="text" name="newword" value="重新输入密码" maxlength = "20" onfocus = "if(this.value == '重新输入密码') this.value =''"></td>
 	  </tr>
 	  <tr>
 		<th>电话号码：</th>
 		<td><input type="text" name="tel" value="输入15个字符以内" maxlength = "15" onfocus = "if(this.value == '输入15个字符以内') this.value =''"></td>
 	  </tr>
 	  <tr>
		<th>用户类型：</th>
		<td><input  type="radio" checked="checked" name="type" value="stu"/>学生
        <input  type="radio" name="type" value="tech"/>教师</td>
 	  </tr>
	  <tr>
 		<td colspan = "2" align = "center">
 		  <input type="submit" value="提 交">    
 		  <input type="reset" value="重  置">
 		</td>
	  </tr>
	</table>
    </form>
    </center> 
</body>
</html>