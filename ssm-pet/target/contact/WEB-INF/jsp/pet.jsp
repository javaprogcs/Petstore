<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>宠物管理</title>

    <style>
        .div1{
            width:65%;
            height:65%;
            margin-left:25%;
            margin-top: -60%;
        }
        .div2{
            width:65%;
            height:65%;
            margin-left:25%;
            margin-top: -350px;
        }
    </style>

    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />

    <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</head>


<body>

<jsp:include page="demo.jsp" flush="true"/>

<div class="div1">
<form action="/pet1" method="get">
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text"  id="inputGroup-sizing-default" >查询</span>
        </div>

        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default"  name="id">
        <input type="submit">
    </div>
</form>
</div>
<div class="div2">
<form action="/pet" method="get">
<table  class="table table-striped" >
<br/>


    <tr>
        <th scope="col">宠物编号</th>
        <th scope="col">类别</th>
        <th scope="col">宠物名字</th>
        <th scope="col">照片</th>
        <th scope="col">标签</th>
        <th scope="col">状态</th>
        <th scope="col">删除</th>
        <th scope="col">修改</th>
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

        <td><a href="/pet/update/${mPets.id}">修改</a></td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</form>
</div>
</body>
</html>