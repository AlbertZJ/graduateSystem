<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加通知界面</title>
</head>
<body>
<center>
	<font face="楷体" size="6" color="#000">发布通知界面</font>
	<form action = "addnotice.jsp" method = "post" onsubmit = "return validate()">
  	<table width="300" height = "180" border="5" bordercolor="#A0A0A0">
  	  
  	  <tr>
		<th>通知内容：</th>
		<td><input type="text" name="note" value="输入16个字符以内" maxlength = "16" onfocus = "if(this.value == '输入16个字符以内') this.value =''"></td>
 	  </tr>
 	    <tr>
 	    
		<th>通知发布者：</th>
		<%String tech_id=(String)request.getSession().getAttribute("username").toString();%>
		<td   ><input type="text" name="tech_id" value="<%=tech_id %>"   maxlength = "16"  readonly="readonly"></td>
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