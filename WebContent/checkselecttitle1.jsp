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
String title_id= (String)request.getParameter("check_id");
String stu_id=(String)request.getSession().getAttribute("username").toString();

TitleDAO dao=new TitleDAO();
List<Title> list =dao.readFirstTitle();    
 for(Title tl:list){
	 if(tl.getTitle_id().equals(title_id)){
		//JDBC 驱动名及数据库 URL
			DataConner manager=DataConner.getInstance();
			Connection conn = manager.connect();
			try{
			Statement stmt = null;
			 // 执行查询
			System.out.println(" 实例化Statement对象...");
			stmt = conn.createStatement();
			request.setCharacterEncoding("UTF-8");
			/* String radio= (String)request.getParameter("no");
			String title_id= (String)request.getParameter("title_id");
			//int title_id=Integer.valueOf(title_id);
		    String title_name=(String)request.getParameter("title_name");
		    String tech_id=(String)request.getParameter("tech_id");//取出login.jsp的值
			String title_state= (String)request.getParameter("title_state");
			//int title_state=Integer.valueOf(title_stat);
			
		    String title_show=(String)request.getParameter("title_show");
		    String stu_id=(String)request.getSession().getAttribute("username").toString();
		   */  String sql;
		    //Boolean pwd;
		   /*  System.out.print(radio);
		    System.out.print(title_id);
		    System.out.print(title_name);
		    System.out.print(tech_id);
		    System.out.print(title_state);
		    
		    System.out.print(title_show);
		    System.out.print(stu_id); */
		    	//sql = "insert into title (title_name,tech_id,title_state,title_show) values('"+title_name+"','"+tech_id+"','"+title_state+"','"+title_show+"')";
		    	sql="UPDATE title SET title_state='已选',stu_id='"+stu_id+"' WHERE title_id='"+title_id+"'";
		    	//sql = "select * from teacher  where tech_id='"+name+"'";
		    	stmt.executeUpdate(sql);
		    	
		    	out.print("<script type='text/javascript' language='javaScript'> alert('添加课题数据成功');</script>");
		 }finally{
			// 完成后关闭
			  manager.disconnect(conn);	
			}		 
		    response.setHeader("refresh", "0;url=selecttitle.jsp");

				System.out.println("bye!");
	 }
 }
 
 %>
</body>
</html>