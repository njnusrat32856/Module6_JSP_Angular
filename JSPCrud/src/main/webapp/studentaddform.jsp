<jsp:include page="header.jsp"></jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>


	<div class="container">
		<h1>Student Form</h1>

		<form action="savestudent.jsp" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Name </label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="name">

			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Email </label> <input
					type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="email">

			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Address </label>
				<input type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="address">

			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Cell </label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="cell">

			</div>
			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Check me
					out</label>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>