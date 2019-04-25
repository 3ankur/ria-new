<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<c:set var="context" value="${pageContext.request.contextPath}" />   
<!DOCTYPE html>
<html>
<head>
<base href="/">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="_csrf" content="${_csrf.token}" />
	<meta name="_csrf_header" content="${_csrf.headerName}" />
	<title>Saama | RIA</title>
	<!--<link rel="stylesheet" type="text/css" href="static/css/styles.css"> -->
	<!-- <link rel="stylesheet" type="text/css" href="static/css/font-awesome.min.css">  -->
	<meta name="viewport"
		content="width=1024, initial-scale=1, minimum-scale: 1, maximum-scale: 1">
	
	
	<!-- <link rel="stylesheet" href="${context}/static/css/bootstrap.custom.min.css" />
	<link rel="stylesheet" href="${context}/static/css/jquery-ui.custom.min.css" />
	<link rel="stylesheet" href="${context}/static/css/style.min.css" />
	<link rel="stylesheet" href="${context}/static/css/styles.css" />
	<link rel="stylesheet" href="${context}/static/css/customStyle.css" /> -->
	
	<link rel="stylesheet" href="${context}/static/css/bootstrap.min.css">
	<link href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> 
	<link rel="stylesheet" href="${context}/static/css/style_revamp.css" /> 
	<link rel="stylesheet" href="${context}/static/css/fae-icon-set/style.css" /> 
	<link rel='shortcut icon' type='image/x-icon' href='${context}/static/images/saama-fav.png' />
	
</head>
<app-root></app-root>
<script type="text/javascript" src="${context}/static/runtime.js">
</script><script type="text/javascript" src="${context}/static/es2015-polyfills.js" nomodule>
</script><script type="text/javascript" src="${context}/static/polyfills.js">
</script><script type="text/javascript" src="${context}/static/styles.js">
</script><script type="text/javascript" src="${context}/static/vendor.js">
</script><script type="text/javascript" src="${context}/static/main.js"></script>
<body>
	  <!-- Dynamic content -->
     <div id="app" class="row"></div>
	<%-- <div id="initConf" th:text="${data}" style="display:none">Data</div>   --%>  
</body>
<%-- <script src="${context}/dist/vendor.bundle.js"></script>
<script src="${context}/dist/app.bundle.js"></script> --%>

<!-- <script>
function initConf(){
	return JSON.parse(document.getElementById("initConf").innerText);
}
</script> -->

<script>

window.rbm = window.vs || {};
var name = '${user.username}';
if(name == ""){
	 name = '${pageContext.request.getUserPrincipal().getName()}';
}

console.log(name);
window.rbm.userConf = function() {
	var obj = {
		'userName' : name,
		'roles' : '${user.roles}'
	};
	return obj;
};
</script>
<!-- <script src="js/jquery/1.11.3/jquery.min.js"></script>
<script src="js/bootstrap/3.3.5/bootstrap.min.js"></script> -->
</body>
</html>