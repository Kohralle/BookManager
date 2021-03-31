<%--
  Created by IntelliJ IDEA.
  User: karolkomorniczak
  Date: 3/31/21
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h1>Book Manager</h1>
    <form method="get" action = "search">
        <input type="text" name="keyword"/>
        <input type="submit" value="Search">
    </form>
    <h3><a href="new">New Book</a></h3>
    <table border="1" cellpadding="5" >
        <tr>
            <th>ID</th>
            <th>ISBN</th>
            <th>AUTHOR</th>
            <th>TITLE</th>
            <th>PUBLISHER</th>
        </tr>
        <c:forEach items = "${listBook}" var="book">
            <tr>
                <td>${book.id}</td>
                <td>${book.isbn}</td>
                <td>${book.author}</td>
                <td>${book.title}</td>
                <td>${book.publisher}</td>
                <td>
                    <a href="edit?id=${book.id}">Edit</a>
                    <a href="delete?id=${book.id}">Delete</a>
                </td>
            </tr>

        </c:forEach>
    </table>
</div>

</body>
</html>
