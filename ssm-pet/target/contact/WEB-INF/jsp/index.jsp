<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工管理</title>

    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</head>
<body>
<form action="/pet" method="get">
<table  class="table table-striped" >
    <tr>
        <th>宠物编号</th>
        <th>类别</th>
        <th>宠物名字</th>
        <th>照片</th>
        <th>标签</th>
        <th>状态</th>
    </tr>

    <tbody>
    <c:forEach items="${mPets}" var="mPets">
    <tr>
        <th scope="row">${mPets.id}</th>
        <td>${mPets.category_id}</td>
        <td>${mPets.name}</td>
        <td>${mPets.photo_urls}</td>
        <td>${mPets.tags}</td>
        <td>${mPets.status}</td>
        <td><a href="/pet/del/${mPets.id}">删除</a></td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</form>
</body>
</html>