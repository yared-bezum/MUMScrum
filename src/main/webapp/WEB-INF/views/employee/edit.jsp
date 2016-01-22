<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"  %>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<style type="text/css">@import url("<c:url value="/resource/css/main.css"/>");</style>
	<title>Title</title>
</head>
	<body>
		<div id="global">
			<form:form modelAttribute="updateEmployee"  method="post">
				<fieldset>
					<legend><spring:message code="employeeUpdate.legend"/></legend>
	  	        	<p>
        				<form:errors path="*" cssStyle="color: red;"/>
        			</p>
					<div>
						<p>
				  			<label for = "employeeNumber"><spring:message code="employeeUpdate.employeeNumber.label"/></label>
							<form:input path="employeeNumber" value="${employeeNumber}"/>
							<form:errors path="employeeNumber" cssStyle="color: red;"/>
						</p>
					</div>
				  	
					<div>
					  	<p>
				  			<label for = "firstName"><spring:message code="employeeUpdate.firstName.label"/></label>
							<form:input path="firstName" value="${firstName}"/>
							<form:errors path="firstName"  cssStyle="color: red;"/>
						</p>
					</div>
	
					<div>
					  	<p>
				  			<label for = "lastName"><spring:message code="employeeUpdate.lastName.label"/></label>
							<form:input path="lastName" value="${lastName}"/>
							<form:errors path="lastName" cssStyle="color: red;"/>
						</p>
					</div>
	
					<div>
					  	<p>
				  			<label for = "age"><spring:message code="employeeUpdate.age.label"/></label>
							<form:input path="age" value="${age}"/>
							<form:errors path="age" cssStyle="color: red;"/>
						</p>
					</div>
	
					<div>
					  	<p>
				  			<label for = "title"><spring:message code="employeeUpdate.title.label"/></label>
							<form:input path="title" value="${title}"/>
							<form:errors path="title" cssStyle="color: red;"/>
						</p>
					</div>

				  	
				  	<!-- Address -->
					<div>
					  	<p>
				  			<label for = "address.street"><spring:message code="employeeUpdate.street.label"/></label>
							<form:input path="address.street" value="${address.street}"/>
							<form:errors path="address.street" cssStyle="color: red;"/>
						</p>
					</div>

					<div>
					  	<p>
				  			<label for = "address.city"><spring:message code="employeeUpdate.city.label"/></label>
							<form:input path="address.city" value="${address.city}"/>
							<form:errors path="address.city" cssStyle="color: red;"/>
						</p>
					</div>

					<div>
					  	<p>
				  			<label for = "address.state"><spring:message code="employeeUpdate.state.label"/></label>
							<form:input path="address.state" value="${address.state}"/>
							<form:errors path="address.state" cssStyle="color: red;"/>
						</p>
					</div>

					<div>
					  	<p>
				  			<label for = "address.zipCode"><spring:message code="employeeUpdate.zipCode.label"/></label>
							<form:input path="address.zipCode" value="${address.zipCode}"/>
							<form:errors path="address.zipCode" cssStyle="color: red;"/>
						</p>
					</div>
					
					<div>
					  	<p>
							<input type="submit" value="<spring:message code="employeeUpdate.submit.value"/>"/>
							<a href='<spring:url value="/"/>'>Home</a>
						</p>
					</div>
				</fieldset>
			</form:form>
		</div>
	</body>
</html>
