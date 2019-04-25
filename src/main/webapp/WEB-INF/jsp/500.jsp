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
<link href="${context}/static/images/saama-logo.png" rel="shortcut icon">
<!-- CSS library -->
<link href="${context}/static/css/bootstrap.custom.min.css" rel="stylesheet"
	type="text/css">
<!-- Custom CSS -->
<style>
html,body {
	height: 100%;
	background: url(${context}/static/images/content_bg.jpg);
}

div.frameT {
	display: table;
	height: 100%;
	width: 100%;
	left: 0;
	top: 0;
	margin: 0;
	padding: 0;
	position: absolute;
}

div.frameTC {
	display: table-cell;
	margin: 0;
	padding: 0;
	vertical-align: middle;
}

.navbar-inverse {
	background: none;
	border: 0;
	border-radius: 0;
	border-bottom: 6px solid #6C6C6C;
}

header {
	position: fixed;
}

.navbar-inverse .navbar-brand {
	padding: 7px 5px;
}

.error-wrapper {
	height: 150px
}

.error-wrapper img {
	float: right
}

.error-wrapper p {
	font-size: 25px;
	color: #c12a10;
	line-height: 40px;
	padding-left: 45px;
	margin-top: 10px
}

.error-wrapper .btn {
	background-color: #c12a10;
	margin: 5px 0 0 45px;
	color: #fff;
	font-weight: bold;
}
</style>
<script>
  function buttonclick() {
    window.location.replace("${context}/");
  }
</script>
</head>
<body>
	<!-- BODY -->
	<div data-role="page" class="ui-body-d">
			<table id="headerTable" style="width: 100%">
				<tr style="vertical-align: middle;">
					<td>
						<img src="${context}/static/images/saama_logo.png" width="134"
						height="50" alt="Saama" style="margin-left: 15px; text-align: left">
						<img
						src="${context}/static/images/janssen_logo.png"
							style="height: 30px;margin-top: 0; margin-right: 15px"
						alt="FAE">	
					</td>
					
						
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
									<%-- <div class="col-md-1 col-1">
										<img src="${context}/app/images/500error.png" height="137" alt="">
									</div> --%>
									<div class="col-md-12 col-12">
										<p>
											Internal Server Error <br />Please try again later
										</p>
										<button class="btn" onclick="buttonclick()">Go to Home
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