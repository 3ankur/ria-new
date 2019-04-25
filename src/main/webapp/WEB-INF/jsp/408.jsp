<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="context" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FAE MAP</title>
<!-- Favicon -->
<link href="${context}/images/saama-logo.png" rel="shortcut icon">
<!-- CSS library -->
<link href="${context}/vs_lib/bootstrap/3.1.1/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<!-- Custom CSS -->
<link href="${context}/css/errorpage.css" rel="stylesheet" type="text/css">
<script>
  function buttonclick() {
    window.location.replace("${context}/index.jsp");
  }
</script>
</head>
<body>
	<!-- BODY -->
	<div data-role="page" class="ui-body-d">
			<table id="headerTable" style="width: 100%">
				<tr style="vertical-align: middle;">
					<td width="33%"><img src="${context}/images/saama-logo.png" width="134"
						height="50" alt="Saama" style="margin-left: 15px; text-align: left"></td>
					<td width="34%" style="text-align: center"></td>
					<td width="33%" style="margin-right: 15px; text-align: right"><img
						src="${context}/images/FAE-logo.png"
							style="height: 30px;margin-top: 0; margin-right: 15px"
						alt="FAE"></td>
						
				</tr>
			</table>
			<div style="clear: both; height: 60px"></div>
			<div data-role="content" style="padding: 0px !important">
				<div align="center">
					<div>
						<div>
							<br /> <br />
							<div class="error-wrapper" id="error401">
								<div class="row">
									<div class="col-md-5 col-5">
										<img src="${context}/images/408error.png" height="137" alt="">
									</div>
									<div class="col-md-7 col-7">
										<p>Sorry, The time allowed for the login process has been
											exceeded.</p>
										<button class="btn" onclick="buttonclick()">Go to Login
											Page</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="footer" data-role="footer" data-theme="f"
				data-position="fixed"
				style="background: #E9EAEA; position: fixed; bottom: 0; width: 100%">
				<div
					style="font-size: 11px; font-family: verdana; text-align: center; color: black;">Copyright
					@2016 - Saama Technologies - All Rights Reserved</div>
			</div>
		</div>
</body>
</html>