<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<security:authorize access="!isAuthenticated()">
					<img
						src="<spring:url value="/resource/images/mum.jpg"  htmlEscape="true" />"
						alt="nile" />
					
					<h1 class=".h1">Welcome to Nile' MUMScrum Tool</h1>
					<h3 class=".h3">Proof of Concept on MUMScrum HR subsystem </h3>
					<a href="<spring:url value='/login' />"
						class="btn btn-lg btn-success btn-mini"> Login</a>
				</security:authorize>
				<security:authorize access="isAuthenticated()">
			
				<div class="page-header">
  				<h2>
  				Nile's MUMScrum HR Proof of Concept</h2>
				</div>
					<h3 class=".h2">
						Welcome:
						<security:authentication property="principal.username" />
					</h3>

					<a href="<spring:url value='/doLogout'/>"
						class="btn btn-default pull-right">Logout</a>
				</security:authorize>

			</div>
			<security:authorize access="hasRole('ROLE_ADMIN')">
			<h1>Welcome to Admin Home Page</h1>
			<div style="color:#0000FF">
				<li><a href="<spring:url value="/employees/add"/>">Create
						Employee Record</a></li>
				<li><a href="<spring:url value="/employees"/>">Employees
						list</a></li>
	      					</div>
			</security:authorize>
			<security:authorize access="hasRole('ROLE_DEV')">
			<h1>Welcome to Developer Home Page</h1>
				<li><a href="<spring:url value="/vendor/"/>">Estimate
						Development Effort</a></li>
				<li><a href="<spring:url value="/vendor/"/>">Update
						Development Effort</a></li>
			</security:authorize>
			<security:authorize access="hasRole('ROLE_TESTER')">
			<h1>Welcome to Tester Home Page</h1>
				<li><a href="<spring:url value="/vendor/"/>">Estimate Test
						Effort</a></li>
				<li><a href="<spring:url value="/vendor/"/>">Update Test
						Effort</a></li>
			</security:authorize>
			<security:authorize access="hasRole('ROLE_SM')">
			<h1>Welcome to Scram Master Home Page</h1>
				<li><a href="<spring:url value="/addSprint"/>">Create
						Sprint</a></li>
				<li><a href="<spring:url value="/vendor/"/>">Update Sprint</a></li>
				<li><a href="<spring:url value="/vendor/"/>">Read Sprint</a></li>
				<li><a href="<spring:url value="/vendor/"/>">view Sprint</a></li>
			</security:authorize>

			<security:authorize access="hasRole('ROLE_PO')">
			<h1>Welcome to Product Home Page</h1>
				<li><a href="<spring:url value="/addProductBL"/>">Add
						Product</a></li>
				<li><a href="<spring:url value="/addReleaseBL"/>">Add
						Release</a></li>
				<li><a href="<spring:url value="/addUserStory"/>">Add User
						Story</a></li>
				<li><a href="<spring:url value="/products"/>">Products</a></li>
				<li><a href="<spring:url value="/releases"/>">Releases</a></li>
				<li><a href="<spring:url value="/userStories"/>">User
						Stories</a></li>
			</security:authorize>
		</div>
	</section>

</body>
</html>