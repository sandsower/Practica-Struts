<%--
    Document   : success
    Created on : 16/11/2010, 08:17:10 PM
    Author     : Karen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
      <link rel="stylesheet" type="text/css" href="../css/stylesheet.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Success</title>
  </head>
  <body>
      <h1>Felicidades!!!</h1>
      <p>Has iniciado Sesión </p>
      <p>Tu nombre es:  <bean:write name="LoginForm" property="name" />.</p>
      <p>Tu correo electrónico es:  <bean:write name="LoginForm" property="email" />.</p>
  </body>
</html>