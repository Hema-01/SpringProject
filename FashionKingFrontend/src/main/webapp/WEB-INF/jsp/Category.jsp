<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	

<body>
<div class="container">
<div class="col-xs-12 col-sm-12 col-md-12">
<img src="https://image.shutterstock.com/image-illustration/bazaar-text-title-headline-3d-260nw-618167345.jpg" alt="logo"
			style="width: 40px;">
</div>
	<div class="col-xs-12 col-sm-8 col-md-8">
	<form action="<c:url value='insertCategory'/>" method="post" align="center">
	
		<table  class="table table-bordered table-responsive" align="center">
			<tr bgcolor="#C6DEFF">
				<td colspan="2"><center>Insert Categorire</center></td>
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
				<td colspan="2" bgcolor="#E5E4E2">
					<center>
					<input type="submit" value="SUBMIT" class="btn btn-info">
					</center>
				</td>
			</tr>
		</table>
	</div>
	</form>
	<div class="col-xs-12  col-md-8">
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
			<td><a href="editCategory/${category.categoryId }" class="btn btn-info">Edit</a></td>
			
			<td><a href="deleteCategory/${category.categoryId }" class="btn btn-danger">Delete</a></td>
		</tr>
	
	</c:forEach>
	</table>
	</div>
</div>
</body>
</html>