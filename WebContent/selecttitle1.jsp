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
 <!-- <script language="JavaScript" type="text/JavaScript">
/* 是否全选标记 */
var checkedAll = false;

/* 全选/取消全选
* formName 所在form的name值
* checkboxName checkbox的name值
* 注意：所有checkbox的name值都必须一样，这样才能达到全选的效果
*/
function selectAll(formName,checkboxName){
var form = document.all.item(formName);
var elements = form.elements[checkboxName];
for (var i=0;i<elements.length;i++){ 
var e = elements[i];
if(checkedAll){
e.checked = false;
form.alls.checked = false;
} else {
e.checked = true;
form.alls.checked = true;
}
}
if(checkedAll){
checkedAll = false;
} else {
checkedAll = true;
}
} 
/* 检查是否有checkbox被选中
* formName 所在form的name值
* checkboxName checkbox的name值
* 注意：所有checkbox的name值都必须一样，这样才能达到全选的效果
*/
function checkAll(formName,checkboxName){
var hasCheck = false;
var form = document.all.item(formName);
var elements = form.elements[checkboxName];
for (var i=0;i<elements.length;i++){
var e = elements[i];
if(e.checked){
	var tr = e.parentNode.parentNode;  
    var tds = tr.cells;  
    var str = "you click ";  
    for(var i = 1;i < tds.length;i++){  
        if (i < 8) {  
           str = str + tds[i].innerHTML + "--";  
        }  
    }  
    alert(str);  
hasCheck = true;

}
 
}
return hasCheck;
}

/* 执行操作 */
function do_action(){
	 
if (!checkAll("formName","no")){
	 
alert("没有radio被选中，提示用户至少选择一个！");
 
} else {
alert("已有radio被选中，可以继续后续操作！");
 
}
}

</script>
   -->
   <!-- <script language="JavaScript" type="text/JavaScript">
   function checkAll(formName,checkboxName){
	   var hasCheck = false;
	   var form = document.all.item(formName);
	   var elements = form.elements[checkboxName];
	   for (var i=0;i<elements.length;i++){
	   var e = elements[i];
	   if(e.checked){
	   	var tr = e.parentNode.parentNode;  
	       var tds = tr.cells;  
	         
	       if(tds[4].innerHTML=="已选"){
	    	   alert("已经被他人选走了，请另选！");
	       }else{
	       for(var i = 1;i < tds.length;i++){  
	           if (i < 8) {  
	              str = str + tds[i].innerHTML + "--";  
	           }  
	       }  
	       alert(str);  
	       }
	   hasCheck = true;
	   }	    
	   }
	   return hasCheck;
	   }
   function do_action(){	    
	   if (!checkAll("formName","no")){	   	 
	   alert("没有radio被选中，提示用户至少选择一个！");	    
	   } else {
	   alert("已有radio被选中，可以继续后续操作！");	    
	   }
	   }
     
   </script> -->
<center>
 
<font face="楷体"   size="6" color="#000">选题界面</font>
	<form name="formName" action = "checkselecttitle.jsp" method = "post" onsubmit = "return validate()">
  	<table      border="1"  >
  	  <tr    height="10">
  	 <!--  <th>选择</th> -->
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
    	  
   {if(tl.getTitle_state().equals("未选"))    
   {	 /*  {out.println(tl.getTitle_state().equals("未选")); */
    %>
  
  <tr>
  <!-- <td> 
    
     选中的值为on
  <input type="radio" name="no"   title="选择/不选择" ></td> -->
     <td   ><input type="text" name="title_id" value="<%=tl.getTitle_id() %>"  maxlength = "16"  readonly="readonly"/></td>
    
     <td   ><input type="text" name="title_name" value="<%=tl.getTitle_name() %>"  maxlength = "16"  readonly="readonly"/></td>
          
          <td   ><input type="text" name="tech_id" value="<%=tl.getTech_id() %>"  maxlength = "16"  readonly="readonly"/></td>
        
        <td   ><input type="text" name="title_state" value="<%=tl.getTitle_state() %>"  maxlength = "16"  readonly="readonly"/></td>
        
       <td   ><input type="text" name="title_show" value="<%=tl.getTitle_show() %>"  maxlength = "16"  readonly="readonly"/></td>
        
      <td   ><input type="text" name="stu_id" value="<%=tl.getStu_id() %>"  maxlength = "16"  readonly="readonly"/></td>
     </tr>
      
     <%}  }
          %>
   	     <tr>
  	     <td colspan = "7" align = "center">输入要选择的课题编号<input type="text" name="check_id" value=""  maxlength = "40" /></td>
  	     </tr>
	   <tr       height="30">
 		<td colspan = "7" align = "center">
 		  <input type="submit" value="提 交"  onClick="do_action()">    
 		  <input type="reset" value="重  置">
 		</td>
	  </tr>
	</table>
	
    </form>
    </center> 

</body>
</html>