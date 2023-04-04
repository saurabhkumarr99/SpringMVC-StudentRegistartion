<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="reg.css">
</head>

<body>
	<header>
		<div class="navbar">
			<ul>
				<li class="button"><a
					href="http://localhost:8484/FirstMavenWebapp/home.jsp">Register
						Student</a></li>
				<li class="button" target="_blank"><a
					href="http://localhost:8484/FirstMavenWebapp/StudentRecord.jsp">Student
						Record</a></li>

			</ul>
		</div>
	</header>
	<h1 style="text-align: center;">Registration form using Spring MVC</h1>
	<section>

		<div class="form">
			<h2>Registration form</h2>
			<form action="registerStudent" method="post">
				Student Name : <input type="text" name="Sname"
					placeholder="Student name"><br> Father Name : <input
					type="text" name="Fname" placeholder="Fathername"><br>
				Mother Name : <input type="text" name="Mname"
					placeholder="Mother name"><br> Gender : Male<input
					type="radio" name="gender" value="Male"> Female<input
					type="radio" name="gender" value="Female"><br> DOB : <input
					type="date" name="Dob"><br>
				<button type="submit" name="button" value="register">Register</button>
			</form>

		</div>

		<div class="search">
			<h2>Search Student</h2>
			<br>
			<form action="SearchStudent" method="post">
				<input type="text" name="name" placeholder="Student Name">
				<button type="submit">Search Student</button>
			</form>


		</div>

		<div class="search">
			<h2>Student Record</h2>
			<br>
			<form action="StudentRecord" method="post">
				<button type="submit">Student Record</button>
			</form>
		</div>
		
		
	</section>
	<footer></footer>
</body>

</html>