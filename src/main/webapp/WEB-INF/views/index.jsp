<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
<style>
body {
   font-family: Arial, Helvetica, sans-serif;
}
* {
   box-sizing: border-box;
}  
form {
   display: flex;
   flex-flow: row wrap;
   align-items: center;
   background-color: silver;
}
form label {
   margin: 5px 10px 5px 0;
}
form input {
   margin: 5px 10px 5px 0;
   padding: 10px;
}
form button {
   padding: 10px 20px;
   font-size: 20px;
   background-color: rgb(39, 22, 141);
   border: 1px solid #ddd;
   color: white;
   cursor: pointer;
   font-weight: bolder;
   border-radius: 4px;
}
.table2
{
}
.button2
{
background-color: #4CAF50;
font-size: 20px;
}
</style>
</head>
<body>
	<h2>Keep Notes</h2>
	<form:form method="POST" action="saveNote" style="border:black; border-width:5px; border-style:outset;">
		<table>
			<tr>
				<td><form:label path="noteId">Enter Note Id:</form:label></td>
				<td><form:input path="noteId"/></td>
			</tr>
			<tr>
				<td><form:label path="noteTitle">Enter Note title:</form:label></td>
				<td><form:input path="noteTitle" /></td>
			</tr>
			<tr>
				<td><form:label path="noteContent">Enter Note content:</form:label></td>
				<td><form:input path="noteContent" /></td>
			</tr>
			<tr>
				<td><form:label path="noteStatus">Enter Status:</form:label></td>
				<td><form:input path="noteStatus" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="Save Note" /></td>
			</tr>
		</table>
	</form:form>

	<hr />
	<h2>List of Notes</h2>
	<table class="table2" border="3" style="width:450px;margin:0;" cellpadding="0" cellspacing="0" border="0">
		<thead style="font-weight: bold" align="center">
			<td style="height:40px; width:70px; margin:0;">Id</td>
			<td style="height:40px; width:150px; margin:0;">Title</td>
			<td style="height:40px; width:150px; margin:0;">Content</td>
			<td style="height:40px; width:90px; margin:0;">Status</td>
			<td style="height:40px; width:250px; margin:0;">CreatedOn</td>
			<td style="height:40px; width:90px; margin:0;">Action</td>
		</thead>
		<c:forEach var="noteItr" items="${notes}">
			<tr>
				<td style="height:40px; width:70px; margin:0;">${noteItr.noteId}</td>
				<td style="height:40px; width:70px; margin:0;">${noteItr.noteTitle}</td>
				<td style="height:40px; width:70px; margin:0;">${noteItr.noteContent}</td>
				<td style="height:40px; width:70px; margin:0;">${noteItr.noteStatus}</td>
				<td style="height:40px; width:70px; margin:0;">${noteItr.createdAt}</td>
				<td><form action="deleteNote" method="post">
						<input type="hidden" id="noteId" name="noteId" 
							value="${noteItr.noteId}" />
						<button type="submit" class="button2">Delete</button>
					</form></td>
			</tr>
			<br />
		</c:forEach>
	</table>

</html>