<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	

<body>
<div class="container">
<div class="col-md-12 col-sm-8 ">
	<form action="<c:url value='insertCategory'/>" method="post" align="center">
	
		<table  class="table table-bordered table-responsive" align="center">
			<tr bgcolor="">
				<td colspan="2" bgcolor="#E5E4E2"><center>Insert Categorire</center></td>
			</tr>
			<tr>
				<td>Category Id</td>
				<td><input type="text"  name="categoryId"/></td>
			</tr>
			<tr>
				<td>Category Name</td>
				<td><input type="text" name="categoryName"/></td>
			</tr>
			<tr >
				<td>Category Description</td>
				<td><textarea row="5" cols="50" name="categoryDesc"></textarea></td>
			</tr>
			<tr >
				<td colspan="2" >
					<center>
					<input type="submit" value="SUBMIT" class="btn btn-info">
					</center>
				</td>
			</tr>
		</table>
	</div>
	</form>
	<div class="col-md-12  col-md-8">
		<table class="table table-striped  table-bordered ">
		<thead bgcolor="orange">
			<th>Category Id</th>
			<th>Category Name</th>
			<th>Category Desc</th>
			<th colspan='2'>Action</th>
		</thead>
	<c:forEach items="${categoryList }" var="category">
		<tr>
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.categoryDesc}</td>
			
			<td><a href="<c:url value='/updateCategory/${category.categoryId}'/>" class="btn btn-info">Edit</a></td>
			
			<td><a href="<c:url value='/deleteCategory/${category.categoryId }'/>" class="btn btn-danger">Delete</a></td>
		</tr>
	
	</c:forEach>
	</table>
	</div>
</div>
</body>
</html>