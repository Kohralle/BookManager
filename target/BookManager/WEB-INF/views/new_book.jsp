<%--
  Created by IntelliJ IDEA.
  User: karolkomorniczak
  Date: 3/31/21
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Book</title>
</head>
<body>
<div align = "center">
    <h2>New Book</h2>
    <form:form action="save" method="post" modelAttribute="book">
        <table border="0" cellpadding="5">
            <tr>
                <td>ISBN: </td>
                <td><form:input path="isbn" /></td>
            </tr>
            <tr>
                <td>AUTHOR: </td>
                <td><form:input path="author" /></td>
            </tr>
            <tr>
                <td>TITLE: </td>
                <td><form:input path="title" /></td>
            </tr>
            <tr>
                <td>PUBLISHER: </td>
                <td><form:input path="publisher" /></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save"></td>
            </tr>
        </table>
    </form:form>

</div>
</body>
</html>
