<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">

$(function() {
	$(".grd-inpt-txt").attr('required','');
	$('.alphaonly').keyup(function() {
	    if (this.value.match(/[^a-zA-Z *$]/g)) {
	        this.value = this.value.replace(/[^a-zA-Z *$]/g, '')
	    
	     }
	})   
});
	
</script>
<style type="text/css">

tr.spaceUnder > td
{
  padding-bottom: 1em;
  padding-left: 1em;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Project</title>
</head>
<body>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Prata Task Schedule</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="./">Home</a></li>
      <li><a href="./createProject">Create Project</a></li>
      <li><a href="./createModule">Create Module</a></li>
      <li><a href="./saveTasks">Create Task</a></li>
      <li><a href="./setTask">Assign Task</a></li>
      <li><a href="./getTask">Developing Tasks</a></li>
       <li><a href="./complTask">Completed Tasks</a></li>
       
    </ul>
  </div>
</nav>
 <div align="center" style="margin-top: 100px;border-collapse: collapse;">
 <form:form action="./createProject" method="post" commandName="projectDts">
 <table border="0">
 <tr><td colspan="2" align="center"><h3>
 <c:if test="${not empty message}">
    <h3>${message}</h3>
	</c:if>
 </h3></td></tr>
 <tr class="spaceUnder">
 <td colspan="2" align="center"><h2>Enter Project Details</h2>

 </td>
 </tr>
 <tr class="spaceUnder">
 <td>Project Name:
 </td>
 <td>
 <form:hidden  path="prjtId"/>
 <form:input path="prjtName" class="grd-inpt-txt alphaonly"/>
 </td>
 </tr>
 <tr class="spaceUnder">
 <td>Project Desription:</td>
 <td><form:input path="prjtDescription" class="grd-inpt-txt alphaonly"/>
 </td>
 </tr>
 <tr class="spaceUnder">
 <td>Status:</td><td>
 <form:input path="status" readonly="true" />
 </td>
 </tr>
 <tr>

 <td colspan="2" align="center"><input type="submit" value="Register" class="btn btn-primary"/></td>
 </tr>
 </table>
 </form:form>
 </div>
 	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>