
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">SarayaTech</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#">Student</a>
        </li>   
        </ul>
    </div>
  </div>
</nav>
</body>
<div class="mb-4">
<h3 style="text-align:center">Welcome back Anna !</h3>
</div>
<div style="margin:30px">

<table class="table table-bordered">
		<thead>
   <tr>
      <th scope="col">Image</th>
      <th scope="col">FirstName</th>
      <th scope="col">LastName</th>
      <th scope="col">Date Of Birth</th>
      <th scope="col">Registration Date</th>
      <th scope="col">Training Duration</th>
      
      <th scope="col">Action</th>
    </tr>
		</thead>
		<tbody>
		<c:forEach items="${student}" var="id">
		<tr>
		<td><img src="https://notjustok.com/wp-content/uploads/2021/11/1D4CC58B-0182-476D-8E85-C92D919450D7.jpeg"></td>
		<td>${id.firstname}</td>
		<td>${id.lastname }</td>
		<td>${id.dateOfBirth}</td>
		<td>${id.registrationDate}</td>
		<td>${id.trainingDuration}</td>
		
		<td>
			<ol style="list-style-type: none">
	<li><a href="delete.do?student=${id.firstname}" class="nav-link active"> Delete </a></li>
		</ol>
		</td>
		</tr>
		</c:forEach>
		</tbody>
</table>

<br>
<br>
<br>

<form action="/registration.do" method="post">
<button class="btn btn-primary" value="add" type="submit">Add Student</button>
</form>
</div>

<footer class="footer bg-light">
<h5 style="text-align:center">Saraya Tech 2021</h5>
<script src="web.jars/jquery/1.9.1/jquery/jquery.min.js"></script>
<script src="web.jars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</footer>
</body>
</html>
