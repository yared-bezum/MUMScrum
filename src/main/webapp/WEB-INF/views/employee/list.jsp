<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	
	<script type="text/javascript">
	$(document).ready(function(){
		test = function() {
			alert('sfdsfds');
		}
		
		deleteEmployee = function(employeeId){
			alert(employeeId);
			$.ajax({
				url: '/MUMScrum/employees/delete/' + employeeId,
				type: 'PUT',
				dataType: 'json',
				success: function(response){
					alert(response);
				},
				error: function(){alert("An error occured.");
				}
			});	
		}  
		alert(employeeId);
	});
	</script>
<title>Employees</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Employee List</h1>

			</div>
			<a href="<spring:url value="/employees/add" />"
				class="btn btn-danger btn-mini pull-right">Add a new employee</a> <br>
			<a href="<spring:url  value="/doLogout" />"
				class="btn btn-danger btn-mini pull-right">Logout</a>

		</div>
	</section>

	<section class="container">
		<div class="row">
			<c:forEach items="${employees}" var="employee">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
						<div class="caption">
							<h4>First Name - ${employee.firstName}</h4>
							<h4>
								Last Name - ${employee.lastName} <a
									href="<spring:url value="/employees/${employee.id}" />"
									class="btn btn-primary  btn-mini  ">View</a>
									<spring:url var="urlUpdate" value="/employees/update">
							<spring:param name="id" value="${employee.id}"/>
						</spring:url>
						<td><a href="${urlUpdate}">Edit</a></td>
						
						<a href="<spring:url value="/employees/delete/${employee.id}" />">Delete</a>
<%-- 						<td><a href="javascript:deleteEmployee(${employee.id});">Delete</a></td> --%>
							</h4>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<button type=button onclick=window.location.href="<spring:url value="/welcome" />"  class="btn btn-lg btn-success btn-mini">Back</button>
	</section>
</body>
</html>