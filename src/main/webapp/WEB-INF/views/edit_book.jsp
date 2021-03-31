<%--
  Created by IntelliJ IDEA.
  User: karolkomorniczak
  Date: 3/31/21
  Time: 7:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Book</title>
</head>
<body>
<div align = "center">
    <h2>Edit Book</h2>
    <form:form action="save" method="post" modelAttribute="book">
        <table border="0" cellpadding="5">
            <tr>
                <td>ID: </td>
                <td>${book.id}
                    <form:hidden path="id"/>
                </td>
            </tr>
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
