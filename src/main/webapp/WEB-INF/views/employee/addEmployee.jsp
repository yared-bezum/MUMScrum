<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Add Employee</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<p>Add a new Employee<p>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form  modelAttribute="newEmployee" class="form-horizontal"  >
			<fieldset>
				<legend>Add new employee</legend>

				<form:errors path="*" cssClass="alert alert-danger" element="div"/>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="employeeNumber"> Employee Number</label>
					<div class="col-lg-10">
						<form:input id="employeeNumber" path="employeeNumber" type="text" class="form:input-large"/>
						<form:errors path="employeeNumber" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="firstName">First Name</label>
					<div class="col-lg-10">
						<form:input id="firstName" path="firstName" type="text" class="form:input-large"/>
						<form:errors path="firstName" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="lastName">Last Name</label>
					<div class="col-lg-10">
						<form:input id="lastName" path="lastName" type="text" class="form:input-large"/>
						<form:errors path="lastName" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="age">Age</label>
					<div class="col-lg-10">
						<form:input id="age" path="age" type="text" class="form:input-large"/>
						<form:errors path="age" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="title">Title</label>
					<div class="col-lg-10">
						<form:input id="title" path="title" type="text" class="form:input-large"/>
						<form:errors path="title" cssClass="text-danger"/>
					</div>
				</div>
				<!-- Address -->
					<div>
					  	<p>
				  			<label for = "address.street"><spring:message code="employeeAdd.street.label"/></label>
							<form:input path="address.street" />
							<form:errors path="address.street" cssStyle="color: red;"/>
						</p>
					</div>

					<div>
					  	<p>
				  			<label for = "address.city"><spring:message code="employeeAdd.city.label"/></label>
							<form:input path="address.city" />
							<form:errors path="address.city" cssStyle="color: red;"/>
						</p>
					</div>

					<div>
					  	<p>
				  			<label for = "address.state"><spring:message code="employeeAdd.state.label"/></label>
							<form:input path="address.state" />
							<form:errors path="address.state" cssStyle="color: red;"/>
						</p>
					</div>

					<div>
					  	<p>
				  			<label for = "address.zipCode"><spring:message code="employeeAdd.zipCode.label"/></label>
							<form:input path="address.zipCode" />
							<form:errors path="address.zipCode" cssStyle="color: red;"/>
						</p>
					</div>

					
				

				<div class="form-group">
					<label class="control-label col-lg-2" for="userName">User Name</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="username" path="credential.username" type="text" class="form:input-large"/>
							<form:errors path="credential.username" cssClass="text-danger"/>
						</div>
					</div>
				</div>

	
				<div class="form-group">
					<label class="control-label col-lg-2" for="password">Password</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:password id="password" path="credential.password"  class="form:input-large"/>
							<form:errors path="credential.password" cssClass="text-danger"/>
						</div>
					</div>
				</div>

	
				<div class="form-group">
					<label class="control-label col-lg-2" for="verifyPassword">Verify Password</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:password  path="credential.verifyPassword"  class="form:input-large"/>
							<form:errors path="credential.verifyPassword" cssClass="text-danger"/>
						</div>
					</div>
				</div>

					<div class="form-group">
					<label class="control-label col-lg-2" for="authority">Role</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input  path="credential.role[0].authority" type="text" value="ROLE_USER" class="form:input-large"/>
							<form:errors path="credential.role[0].authority" cssClass="text-danger"/>
						</div>
					</div>
				</div>
 
 							<form:hidden path="credential.enabled" value="TRUE"  />
 							
 

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<p>
						<input type="submit" id="btnAdd" class="btn btn-lg btn-success btn-mini" value ="Add"/>
						<span> | </span>
						<button type=button onclick=window.location.href="<spring:url value="/welcome" />"  class="btn btn-lg btn-success btn-mini">Back</button>
						</p>
					</div>
				</div>
				
			</fieldset>
		</form:form>
	</section>
</body>
</html>