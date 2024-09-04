<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee list</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1 style="text-align: center;">Employee list</h1>
   <table class="table table-hover" style="text-align: center;  margin-left: auto;
    margin-right: auto;" border="1" width="50%">
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
   <a href="employee-form.jsp" style="text-align: center;">Search Employee</a>
   <form action="${pageContext.request.contextPath}/EC?action=LIST">
   <div class="form-group">
					<label for="eid" class="col-sm-2 col-form-label">Emp ID</label> 
						<input type="text" class="form-control" size="20" name="eid" placeholder="Enter eid" required />
				</div>
   
   </div>
   	<div class="form-group">
					<button type="submit" name="action" value="SEARCH" class="btn btn-primary">SEARCH Employee</button>
				</div>
   </form>
</body>
</html>
