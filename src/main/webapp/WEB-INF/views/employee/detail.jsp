<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Employee</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Employee</h1>
			</div>
 				<a href="<spring:url value="/employees/add" />" class="btn btn-danger btn-mini pull-right">Add a new Employee</a>	
 				<br>
 				<a href="<spring:url  value="/doLogout" />" class="btn btn-danger btn-mini pull-right">Logout</a>	
 			
 							<div class="pull-left"> <h3>${SpecialBlurb}</h3> </div>
 			
		</div>
	</section>

	<section class="container">
		<div class="row">
 				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
 						<div class="caption">
							<h3>First Name - ${employee.firstName}</h3>
							<h3>Last Name -  ${employee.lastName}</h3>
							<p>Age -         ${employee.age}</p>
							<p>Title -       ${employee.title} </p>
							<p>NUMBER -      ${employee.employeeNumber}</p>
							<p> STREET -      ${employee.address.street}</p>
							<p> CITY -      ${employee.address.city}</p>
							<p> STATE -      ${employee.address.state}</p>
							<p> ZIPCODE -      ${employee.address.zipCode}</p>

						</div>
						<button type=button onclick=window.location.href="<spring:url value="/welcome" />"  class="btn btn-lg btn-success btn-mini">Back</button>
					</div>
				</div>
 
		</div>
	</section>
</body>
</html>