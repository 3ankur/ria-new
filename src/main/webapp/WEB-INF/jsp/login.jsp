<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Saama | CDO</title>
<link rel="shortcut icon" href="${context}/static/images/saama-fav.png" />
<link rel="stylesheet"  href="${context}/static/css/loginStyles.css" />
</head>
<body class="login-page">	
<div data-role="content" class="container login-landing-container">
		<div class="row">
			<div class="col-md-12">
				<div class="logo">
					<a href="#"><img src="${context}/static/images/saama_logo2.png" ></a>
				</div>
			</div>
		</div>
		<div class="row content-container">
			<div class="col-md-7">
				<div class="login-info-text">
					<h4>Clinical Development Optimizer (CDO) is the data lifecycle management solution delivering better trial effectiveness and cost. CDO provides 
 clinical data management and analytics for bioinformatics and operations.
 With CDO you can assess risks across all studies to evaluate performance 
based on key metrics and flag potential risks that would impede the study.</h4>
					<ul>
						<li><img src="${context}/static/images/clock.png"> Faster in operation</li>
						<li><img src="${context}/static/images/smile.png"> Easy to use</li>
						<li><img src="${context}/static/images/location.png"> Everything at one place </li>
					</ul>
				</div>
			</div>
			<div class="col-md-5">
				<div class="login-box">
					<div class="box-header">
						<h2>Welcome</h2>
						<p>Login to get started!</p>
					</div>
					<form name="f" action="login"
							data-ajax="false" method="POST" data-role="none" rel="external">
						<c:set var="error" scope="session"
							value="${error}" />
						<c:if test="${not empty error}">
							<div style="color: red">Login Failed! :
								${error}</div>
						</c:if>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Username"
								name='username' value=''>
						</div>
						<div class="form-group">
							<input type="password" class="form-control"
								placeholder="Password" name='password'>
						</div>

						<%-- <input type="text" name='X-CSRF-TOKEN'
						
											value="${_csrf}" hidden /> --%>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<div>
							<button type="submit" name="submit"
							class="btn btn-default login-btn" data-ajax="false"
							value="Sign in" rel="external">LOGIN</button>
							<button id="reset" name="reset"	type="reset" value="Reset" class="btn btn-default login-btn reset-btn">RESET</button>
						</div>
					</form>
					
					<div class="box-footer clearfix">
						<ul>
							<li>Copyright 2018 <a href="http://www.saama.com/" target="_blank" style="color:#1e96de">Saama Technologies</a> - All Rights Reserved</li>
						</ul>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<!-- End body -->
</html>