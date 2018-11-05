<%--
  Created by IntelliJ IDEA.
  User: Java软件工程师
  Date: 2018/11/5
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form action="/pet" method="post" enctype=" /form-data">
    <table>
    <tbody>
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
    </tbody>
    <tbody id="tbody1">
    <tr>
        <td><input type="number" ></td>
        <td><input type="number"></td>
        <td><input type="text"></td>
        <td><input type="file"></td>
        <td><input type="number"></td>
        <td><input type="text"></td>
    </tr>
    </tbody>
    </table>
    <input type="submit">
</form:form>


</body>
</html>
