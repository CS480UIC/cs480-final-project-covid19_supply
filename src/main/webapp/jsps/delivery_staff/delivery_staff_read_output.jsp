<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read Delivery Staff Output</title>
    
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
  <h1>Read Delivery Staff Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	delivery_id:<input type="text" name="delivery_id" value="${delivery_staff.delivery_id }" disabled/>
	<br/>
	delivery_staff_id:<input type="text" name="delivery_staff_id" value="${delivery_staff.delivery_staff_id }" disabled/>
	<br/>
	delivery_date	：<input type="text" name="delivery_date" value="${delivery_staff.delivery_date }" disabled/>
	<br/>
	supplier_id	：<input type="text" name="supplier_id" value="${delivery_staff.supplier_id }" disabled/>
	<br/>
</form>

<button onclick="window.location.href='<c:url value='/jsps/main.jsp'/>'">Continue</button>
</body>
</html>
