<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="graduate.DataConner" %>
     <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加用户界面</title>
</head>
<body>
 
<%		//JDBC 驱动名及数据库 URL
	DataConner manager=DataConner.getInstance();
	Connection conn = manager.connect();
	try{
	Statement stmt = null;
	 // 执行查询
	System.out.println(" 实例化Statement对象...");
	stmt = conn.createStatement();
	request.setCharacterEncoding("UTF-8");
   	String userid=(String)request.getParameter("userid");
    String name=(String)request.getParameter("username");
    String password=(String)request.getParameter("password");//取出login.jsp的值
	String repassword=(String)request.getParameter("newword");
	String tel=(String)request.getParameter("tel");
	String type=(String)request.getParameter("type");
	if(!repassword.equals(password)){
        out.print("<script type='text/javascript' language='javaScript'> alert('密码不一致!');</script>");
        response.setHeader("refresh", "0;url=register.jsp");
 
	} 
    String sql;
    Boolean pwd;
    System.out.print(userid);
    System.out.print(name);
    System.out.print(password);
    System.out.print(tel);
    System.out.print(type);
    if(type.equals("tech")){
    	type="教师";
    	System.out.print("ggg");
    	sql = "insert into teacher values('"+userid+"','"+name+"','"+password+"','"+tel+"','"+type+"')";
		//sql = "select * from teacher  where tech_id='"+name+"'";
    	stmt.executeUpdate(sql);
    	
    	out.print("<script type='text/javascript' language='javaScript'> alert('添加教师数据成功');</script>");
    
    }
    else
    {
    	type="学生";
    	System.out.print(type);
    	System.out.print("qqq");
    	sql = "insert into student values('"+userid+"','"+name+"','"+password+"','"+tel+"','"+type+"')";
    	stmt.executeUpdate(sql);
    	//sql="select * from student  where stu_id='"+name+"'";
    	   out.print("<script type='text/javascript' language='javaScript'> alert('添加用户数据成功');</script>");
       
    
    }
	   
	}finally{
	// 完成后关闭
	  manager.disconnect(conn);
	
	}		
    response.setHeader("refresh", "0;url=register.jsp");

		System.out.println("bye!");
 %>
</body>
</html>