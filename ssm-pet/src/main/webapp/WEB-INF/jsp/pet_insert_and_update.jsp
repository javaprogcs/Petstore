<%--
  Created by IntelliJ IDEA.
  User: Java软件工程师
  Date: 2018/11/5
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />

    <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</head>
<body>
<form action="/pet" method="get">
    <div class="form-group">
        <label for="formGroupExampleInput">宠物编号</label>
        <input type="number" class="form-control" id="formGroupExampleInput" placeholder="宠物编号" name="id">
    </div>
    <div class="form-group">
        <label for="formGroupExampleInput2">类别</label>
        <input type="number" class="form-control" id="formGroupExampleInput2" placeholder="类别" name="category_id">
    </div>
    <div class="form-group">
        <label for="formGroupExampleInput3">名字</label>
        <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="名字" name="name">
    </div>

    <div class="form-group">
        <label for="exampleFormControlFile1">选中图片</label>
        <input type="file" class="form-control-file" id="exampleFormControlFile1" name="photo_urls" name="photo_urls">
    </div>

    <div class="form-group">
        <label for="formGroupExampleInput4">标签</label>
        <input type="number" class="form-control" id="formGroupExampleInput4" placeholder="标签" name="tags">
    </div>

    <div class="form-group">
        <label for="formGroupExampleInput5">状态</label>
        <input type="text" class="form-control" id="formGroupExampleInput5" placeholder="状态" name="status">
    </div>

    <input type="submit">
</form>

</body>
</html>
