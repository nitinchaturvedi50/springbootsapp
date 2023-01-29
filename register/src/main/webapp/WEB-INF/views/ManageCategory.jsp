<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="CommonHeader.jsp" %>
<div class="container-fluid">
  <h3>Manage Category Page</h3>
  </div>
<table align="center">
<form action="<c:url value="/insertCategory"/>" method="post">
<tr><td>CategoryID</td>
<td><input type="text" name="catId" id="catId" /></td></tr>
<tr><td>Category Name</td>
<td><input type="text" name="catName" id="catName"/></td></tr>
<tr><td>Category Desc</td>

<td><textarea rows="5" cols="30" name="catDesc"></textarea></td></tr>
<tr><td colspan="2">
<input type="submit" value="Insert Category"/>
</td></tr>
</form></table>
<table width="100%">
<tr bgcolor="pink">
<td>Category Id</td>
<td>Category Name</td>
<td>Category Desc</td>
<td>Operations</td></tr>
<c:forEach items="${categoryList}" var="category">
<tr>
<td>${category.categoryId}</td>
<td>${category.categoryName}</td>
<td>${category.categoryDesc}</td>
<td><a href="<c:url value="/editCategory/${category.categoryId}"/>">Edit</a>
<a href="<c:url value="/deleteCategory/${category.categoryId}"/>">delete</a></td></tr></c:forEach></table>

</body>
</html>