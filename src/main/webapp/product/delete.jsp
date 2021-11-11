<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/11/2021
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>XOÁ SẢN PHẨM</h1>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>THÔNG TIN SẢM PHẨM</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>${requestScope["product"].getName()}</td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>${requestScope["product"].getPrice()}</td>
            </tr>
            <tr>
                <td>Description: </td>
                <td>${requestScope["product"].getDescription()}</td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td>${requestScope["product"].getProducer()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete product"></td>
<%--                <td><a href="/products">TRỞ LẠI DANH SÁCH SẢN PHẨM</a></td>--%>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
