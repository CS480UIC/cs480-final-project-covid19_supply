<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Hospital</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>Delete Hospital</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/HospitalServletDelete'/>" method="post">
	<input type="hidden" name="method" value="delete"/>
		<input type="hidden" name="hospital_id" value="${hospital.hospital_id }"/>
	hospital_id    :<input type="text" name="hospital_id" value="${hospital.hospital_id}" disabled/>
	<br/>
	hospital_name：<input type="text" name="hospital_name" value="${hospital.hospital_name}" disabled/>
	<br/>
	hospital_address	：<input type="text" name="hospital_address" value="${hospital.hospital_address}" disabled/>
	<br/>
	delivery_id    :<input type="text" name="delivery_id" value="${hospital.delivery_id }" disabled/>
	<br/>
	<input type="submit" value="Delete Hospital"/>
</form>

</body>
</html>
