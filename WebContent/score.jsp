<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分数界面</title>
</head>
<body>
<%  
  double result = 0.0;
    String stu_id = request.getParameter("stu_id");
    String usual = request.getParameter("usual_grade");
    String reply = request.getParameter("reply_grade");
     String usual_proportion="0";
    		 usual_proportion=request.getParameter("usual_proportion");
     int reply_proportion=0;
    if (stu_id != null) {
    	reply_proportion=100-Integer.parseInt(usual_proportion);
        result += Double.parseDouble(usual )*Double.parseDouble(usual_proportion)/100 + (Double.parseDouble(reply )*reply_proportion)/100 ;
         
    } else {
        stu_id = "";
        usual = "";
        reply = "";
        usual_proportion="";
        reply_proportion=0;

    }
    %>
    <center> 
    <font face="楷体" size="6" color="#000">打分界面</font>
	<form>
  	<table width="600" height = "180" border="5" bordercolor="#A0A0A0">
  	 <tr>
		<th>平时成绩所占比例(如：40表示40%)：</th>
		<td><input type="text" name="usual_proportion" value="输入16个字符以内" maxlength = "16" onfocus = "if(this.value == '输入平时成绩') this.value =''"></td>
 	  </tr>
 	  
  	  <tr>
		<th>平时成绩：</th>
		<td><input type="text" name="usual_grade" value="输入16个字符以内" maxlength = "16" onfocus = "if(this.value == '输入平时成绩') this.value =''"></td>
 	  </tr>
  	  <tr>
		<th>成果成绩：</th>
		<td><input type="text" name="reply_grade" value="输入16个字符以内" maxlength = "16" onfocus = "if(this.value == '输入成果成绩') this.value =''"></td>
 	  </tr>
   <tr>
		<th>学生编号：</th>
		<td><input type="text" name="stu_id" value="输入 课题内容" maxlength = "255" onfocus = "if(this.value == '输入16个字符以内') this.value =''"></td>
 	  </tr>
 	   
	  <tr>
 		<td colspan = "2" align = "center">
 		  <input type="submit" value="确定">
 		   
 		  <input type="reset" value="重  置">
 		</td>
	  </tr>
	</table>
    </form>
     	      总成绩：<input type="text" name="total_grade" value="<%=result %>" maxlength = "16" disable="true">    
 </center>
 <br/>
 <br/>
<center>
	<font face="楷体" size="6" color="#000">结果界面</font>
	<form action = "addscore.jsp" method = "post" onsubmit = "return validate()">
  	<table width="600" height = "180" border="5" bordercolor="#A0A0A0">
  	  <tr>
		<th>平时成绩：</th>
		<td><input type="text" name="usual_grade" value="<%=usual %>" maxlength = "16" readonly="readonly"></td>
 	  		<td><input type="text" name="usual_proportion" value="平时成绩所占比例：<%=usual_proportion %>%" maxlength = "16"  disable="true"></td>
 	  
 	  </tr>
 	  
  	  <tr>
		<th>成果成绩：</th>
		<td><input type="text" name="reply_grade" value="<%=reply %>" maxlength = "16" readonly="readonly" ></td>
 	  		<td ><input type="text" name="reply_proportion" value="成果成绩所占比例：<%=reply_proportion %>%" maxlength = "16"  disable="true"></td>
 	  
 	  </tr>
 	  <tr>
		<th>总成绩：</th>
		<td colspan = "2" align = "center"  ><input type="text" name="total_grade" value="<%=result %>"  maxlength = "16" disable="true">    
</td>
 
 	  </tr>
   <tr>
		<th>教师编号：</th>
		<%String tech_id=(String)request.getSession().getAttribute("username").toString();%>
		<td colspan = "2" align = "center"  ><input type="text" name="tech_id" value="<%=tech_id %>"   maxlength = "16"  readonly="readonly"></td>
 	  </tr>
 	  <tr>
		<th>学生编号：</th>
		<td colspan = "2" align = "center"  ><input type="text" name="stu_id" value="<%=stu_id %>"   maxlength = "255"  readonly="readonly"></td>
 	  </tr>
 	   
	  <tr>
 		<td colspan = "3" align = "center">
 		  <input type="submit" value="提 交">
 		   
 		   
 		</td>
	  </tr>
	</table>
    </form>
     </center>   
</body>
</html>