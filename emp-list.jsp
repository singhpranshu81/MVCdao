<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee list</title>
</head>
<body>
<h1 style="text-align: center;">Employee list</h1>
   <table style="text-align: center;" border="1" width="50%">
   <tr>
   <th>Emp ID</th>
   <th>Ename</th>
   <th>Address</th>
   <th>Dept</th>
   <th colspan="2">Action</th>
   </tr>
  <c:forEach var="row" items="${allemp}"> 
  <tr>
  <td><c:out value="${row.eid}" /></td>
   <td><c:out value="${row.ename}" /></td>
    <td><c:out value="${row.address}" /></td>
     <td><c:out value="${row.dept}" /></td>
      <td>Edit</td>
				<td>Delete</td>
			</tr>
  
  </c:forEach>
   </table>
</body>
</html>
