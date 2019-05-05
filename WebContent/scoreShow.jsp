<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="graduate.ScoreDAO" %>
    <%@page import="graduate.Score" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分数界面</title>
</head>
<body>
  
 
<center>
<font face="楷体" size="6" color="#000">分数界面</font>
	<form action = "#.jsp" method = "post" onsubmit = "return validate()">
  	<table   border="1" bordercolor="#A0A0A0">
  	  <tr   height="10">
		<th>平时成绩</th>
		<th>成果成绩</th>
		<th>总成绩</th>
		<th>教师编号</th>
		<th>学生编号</th>	
		 		 
  	  </tr>
  	  <%
  	ScoreDAO dao=new ScoreDAO();
     List<Score> list =dao.readFirstTitle();    
      for(Score tl:list)
   {%>
  <tr>
     <td><input type="text"  value="<%=tl.getUsual_grade() %>"   maxlength = "16"  readonly="readonly"> </td>
     <td><input type="text"  value="<%=tl.getReply_grade() %>"   maxlength = "16"  readonly="readonly"> </td>  
     <td><input type="text"  value="<%=tl.getTotal_grade() %>"   maxlength = "16"  readonly="readonly"> </td>  
          <td><input type="text"  value="<%=tl.getTech_id() %> "   maxlength = "16"  readonly="readonly"> </td>  
        <td><input type="text"  value="<%=tl.getStu_id() %> "   maxlength = "16"  readonly="readonly"> </td> 
       
     </tr>
     <%}
          %>
  	    
	   
	</table>
    </form>
    </center>  
 
 
</body>
</html>