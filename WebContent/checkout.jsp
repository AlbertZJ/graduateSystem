<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page language="java"%> 
  
 <%@ page import="java.util.*"%>
 <%@ page import="java.text.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<font face="楷体" size="6" color="#000">签到界面</font>
	<form action = "addcheck.jsp" method = "post" onsubmit = "return validate()">
  	<table width="300" height = "180" border="5" bordercolor="#A0A0A0">
  	  <tr>
		<th>签到编号：</th>
		<td><input type="text" name="check_id" value="输入数字" maxlength = "16" onfocus = "if(this.value == '输入数字') this.value =''"></td>
 	  </tr>
  	   
 	     
 	  <tr>
		<th>签到结束：</th>
		<td><input type="text" name="check_end" value="<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>" maxlength = "16"  ></td>
 	  </tr>
 	  <tr>
		<th>学生编号：</th>
		<td><input type="text" name="stu_id" value="输入 学生编号" maxlength = "255" onfocus = "if(this.value == '输入16个字符以内') this.value =''"></td>
 	  </tr>
 	 <tr>
		<th>签到次数：</th>
		<td><input type="text" name="stu_num" value="签到次数" maxlength = "255" onfocus = "if(this.value == '输入16个字符以内') this.value =''"></td>
 	  </tr>
 	   <tr>
		<th>教师编号：</th>
	 
		<td><input type="text" name="tech_id" value="输入 教师编号" maxlength = "255" onfocus = "if(this.value == '输入16个字符以内') this.value =''"></td>
 	  </tr>
	  <tr>
 		<td colspan = "2" align = "center">
 		  <input type="submit" value="签退">    
 		   
 		</td>
	  </tr>
	</table>
    </form>
    </center> 
</body>
</html>