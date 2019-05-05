<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="graduate.DataConner" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布通知界面</title>
</head>
<body>

<%		//JDBC 驱动名及数据库 URL
	DataConner manager=DataConner.getInstance();
	Connection conn = manager.connect();
	try{
	Statement stmt = null;
	 
	stmt = conn.createStatement();
	request.setCharacterEncoding("UTF-8");
	String note_id= (String)request.getParameter("note_id");
	 
    String note=(String)request.getParameter("note");
    String tech_id=(String)request.getParameter("tech_id");//取出login.jsp的值
   String sql;
    Boolean pwd;
    System.out.print(note_id);
    System.out.print(note);
    System.out.print(tech_id);
     
     
    	sql = "insert into   notice (note,tech_id) values('"+note+"','"+tech_id+"')";
		//sql = "select * from teacher  where tech_id='"+name+"'";
    	stmt.executeUpdate(sql);
    	
    	out.print("<script type='text/javascript' language='javaScript'> alert('发布通知成功');</script>");
 }finally{
	// 完成后关闭
	  manager.disconnect(conn);
	
	}		
    response.setHeader("refresh", "0;url=addnote.jsp");

		System.out.println("bye!");
 %>
</body>
</html>