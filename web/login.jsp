<%-- 
    Document   : login
    Created on : 16/11/2010, 08:04:00 PM
    Author     : Sanders
--%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
    </head>
    <body>
        <h1>Login Form</h1>
        <table border="0">
            <tbody>
                <tr>
                    <td>Enter your name:</td>
                    <td><html:text property="name" /></td>
                </tr>
                <tr>
                    <td>Enter your email:</td>
                    <td><html:text property="email" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><html:submit value="Login" /></td>
                </tr>
            </tbody>
        </table>

        <html:form action="/login">
            <html:submit value="Login" />
        </html:form>
    </body>
</html>
