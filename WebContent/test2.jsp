<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="graduate.DataConner" %>
    <%@page import="java.sql.*" %>
     <%@page import="graduate.TitleDAO" %>
    <%@page import="graduate.Title" %>
    <%@page import="java.util.List" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   	    
<%	
String radio= (String)request.getParameter("no");
String title_id= (String)request.getParameter("title_id");
 
String title_name=(String)request.getParameter("title_name");
String tech_id=(String)request.getParameter("tech_id");//取出login.jsp的值
String title_state= (String)request.getParameter("title_state");
 
String title_show=(String)request.getParameter("title_show");
 
 
System.out.print(radio);
System.out.print(title_id);
System.out.print(title_name);
System.out.print(tech_id);
System.out.print(title_state);
 %>  
</body>
</html>