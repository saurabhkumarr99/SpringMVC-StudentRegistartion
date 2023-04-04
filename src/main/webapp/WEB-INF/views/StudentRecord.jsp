<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import=" java.util.ArrayList"%>
<%@page import="springmvc.model.Student_pojo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header></header>


	<section>
		<div class="data">
			<h2>Student Record</h2>

			<table>
				<thead>
					<tr>
						<th>Sr.</th>
						<th>Student Name</th>
						<th>Father Name</th>
						<th>Mother Name</th>
						<th>Gender</th>
						<th>DOB</th>
						<th>Update</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<%
					ArrayList<Student_pojo> list = (ArrayList<Student_pojo>) request.getAttribute("StudentList");
					int id = 1;
					for (Student_pojo student : list) {
					%>
					<tr>
						<td><%=id%></td>
						<td><%=student.getSname()%></td>
						<td><%=student.getFname()%></td>
						<td><%=student.getMname()%></td>
						<td><%=student.getGender()%></td>
						<td style="font-size: 15px;"><strong><%=student.getDob()%></strong></td>


						<form action="curd" method="post">
							<input type="hidden" name="Sname" value=<%=student.getSname()%>>
							<td><button type="submit" name="button" value="update">Update</button></td>
							<td><button type="submit" name="button" value="delete">Delete</button></td>

						</form>
					</tr>

					<%
					id++;
					}
					%>


				</tbody>

			</table>

		</div>
		<div class="search">
			<h2>Student Record</h2>
			<br>
			<form action="home" method="post">

				<button type="submit">Home</button>
			</form>


		</div>

	</section>


</body>
</html>