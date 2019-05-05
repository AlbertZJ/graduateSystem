<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="graduate.DataConner" %>
     <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录检查界面</title>
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
	String type=(String)request.getParameter("type");
    String name=(String)request.getParameter("username");
    request.getSession().setAttribute("username",name);
    String password=(String)request.getParameter("password");//取出login.jsp的值
	String sql;
    Boolean pwd;
    System.out.print(type);
    if(type.equals("tech")){
    	System.out.print("ggg");
		sql = "select * from teacher  where tech_id='"+name+"'";
		}
    else
    {
    	System.out.print("qqq");
    	sql="select * from student  where stu_id='"+name+"'";
    }
	ResultSet rs = stmt.executeQuery(sql);		
	// 展开结果集数据库
	  if(rs!=null&&rs.next())
		{   
		  if(type.equals("tech"))
		  {
			  pwd=password.equals(rs.getString("tech_pwd"));
		  }else{
			  pwd=password.equals(rs.getString("stu_pwd"));
		  }
		  
    if(pwd){
    	if(type.equals("tech"))
		  {
    		response.sendRedirect("teacher.jsp");
		  }else{
			  response.sendRedirect("student.jsp");
		  }
         
    }
    else{
        out.print("<script type='text/javascript' language='javaScript'> alert('密码错误');</script>");
        response.setHeader("refresh", "0;url=login.jsp");
    }
}
	  else{		
	        out.print("<script type='text/javascript' language='javaScript'> alert('账号错误');</script>");
            response.setHeader("refresh", "0;url=login.jsp");
	  }
	}finally{
	// 完成后关闭
	  manager.disconnect(conn);
	}		 
		System.out.println("Goodbye!");
 %>
</body>
</html>