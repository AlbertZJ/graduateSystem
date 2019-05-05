<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>选题信息界面</title>
</head>
<body>
<center>
<font face="楷体" size="6" color="#000">查看课题界面</font>
	<form  >
  	<table   border="1" bordercolor="#A0A0A0">
  	  <tr   height="10">
		<th>课题编号</th>
		<th>课题名称</th>
		<th>作者编号</th>
		<th>课题状态</th>
		<th>课题内容</th>	
		<th>选题学生编号</th>		 
  	  </tr>
  	  <%
  	TitleDAO dao=new TitleDAO();
     List<Title> list =dao.readFirstTitle();    
      for(Title tl:list)
   {%>
  <tr>
    <td   ><input type="text" name="title_id" value="<%=tl.getTitle_id() %>"  maxlength = "16"  readonly="readonly"/></td>
    
     <td   ><input type="text" name="title_name" value="<%=tl.getTitle_name() %>"  maxlength = "16"  readonly="readonly"/></td>
          
          <td   ><input type="text" name="tech_id" value="<%=tl.getTech_id() %>"  maxlength = "16"  readonly="readonly"/></td>
        
        <td   ><input type="text" name="title_state" value="<%=tl.getTitle_state() %>"  maxlength = "16"  readonly="readonly"/></td>
        
       <td   ><input type="text" name="title_show" value="<%=tl.getTitle_show() %>"  maxlength = "16"  readonly="readonly"/></td>
       
      <td   ><input type="text" name="stu_id" value="<%=tl.getStu_id() %>"  maxlength = "16"  readonly="readonly"/></td>
     </tr>
     <%}
          %>
  	    
	   
	</table>
    </form>
    </center> 

</body>
</html>