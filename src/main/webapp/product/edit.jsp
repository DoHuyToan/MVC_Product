<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/10/2021
  Time: 9:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>EDIT PRODUCT</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">TRO LẠI DANH SÁCH SẢN PHẨM</a>
</p>
<form METHOD="post"
<legend>Customer information</legend>
<table>
    <tr>
        <td>Id: </td>
        <td><input type="text" name="name" id="id" value="${requestScope["product"].getId()}"></td>
    </tr>
    <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
    </tr>
    <tr>
        <td>Price: </td>
        <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
    </tr>
    <tr>
        <td>Description: </td>
        <td><input type="text" name="description" id="description" value="${requestScope["product"].getDescription()}"></td>
    </tr>
    <tr>
        <td>Producer: </td>
        <td><input type="text" name="producer" id="producer" value="${requestScope["product"].getProducer()}"></td>
    </tr>
    <tr>
        <td></td>
        <td><input type="submit" value="Edit Product"></td>
    </tr>
</table>
</fieldset>

</body>
</html>
