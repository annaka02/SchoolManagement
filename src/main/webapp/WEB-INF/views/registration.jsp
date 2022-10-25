
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
    </div>
  </div>
</nav>
</body>
<div style="margin:30px; padding:30px">
<h3>Register a new student!</h3>
<form action="/student.do" method="post">
<label>FirstName</label><br>
<input type="text" name="firstname" style="width:50%"><br>

<label>LastName</label><br>
<input type="text" name="lastname" style="width:50%"><br>

<label>Date of birth</label><br>
<input type="Date" name="date" style="width:50%"><br>

<label>Training Duration</label><br>
<input type="text" name="training" style="width:50%"><br>

<label>Registration Date</label><br>
<input type="date" name="regis" style="width:50%"><br>

<label>Description</label><br>
<input type="text" name="des" style="width:50%"><br>

<label>Image</label><br>
<input type="text" name="image" style="width:50%"><br><br>

<button class="btn btn-primary" type="submit">Add</button><br>
</form>
</div>

<footer class="footer bg-light">
<h5 style="text-align:center">Saraya Tech 2021</h5>
<script src="web.jars/jquery/1.9.1/jquery/jquery.min.js"></script>
<script src="web.jars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</footer>
</body>
</html>