  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="CommonHeader.jsp" %>
<div class="container-fluid">
  <h3>Manage Category Page</h3>
  </div>
<table align="center">
<form action="<c:url value="/updateCategory"/>" method="post">
<tr><td>CategoryID</td>
<td><input type="text" name="catId" id="catId" value="${category.categoryId}"/></td></tr>
<tr><td>Category Name</td>
<td><input type="text" name="catName" id="catName" value="${category.categoryName}"/></td></tr>
<tr><td>Category Desc</td>

<td><textarea rows="5" cols="30" name="catDesc" value="${category.categoryDesc}"></textarea></td></tr>
<tr><td colspan="2">
<input type="submit" value="Insert Category"/>
</td></tr>
</form></table></div></html>