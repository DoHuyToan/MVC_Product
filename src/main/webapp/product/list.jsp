<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/10/2021
  Time: 4:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DANH SÁCH SẢN PHẨM</title>
</head>
<body>
    <h1>DANH SÁCH SẢN PHẨM</h1>
    <p> <a href="/products?action=create">THÊM SẢN PHẨM MỚI</a> </p>
    <table border="1px">
        <tr>
            <td>TÊN SẢN PHẨM</td>
            <td>GIÁ SẢN PHẨM</td>
            <td>MÔ TẢ</td>
            <td>NHÀ CUNG CẤP</td>
        </tr>

<%--        GIÁ TRỊ TRONG requestScope CHÍNH LÀ TÊN GÁN Ở BÊN SERVLET, GÍA TRỊ TRONG VAR LÀ KHAI BÁO 1 BIẾN BẤT KỲ--%>
        <c:forEach items='${requestScope["products"]}' var="product">
            <tr>
                <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
                <td>${product.getPrice()}</td>
                <td>${product.getDescription()}</td>
                <td>${product.getProducer()}</td>
                <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
                <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
