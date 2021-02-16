<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER Home</title>
</head>
<body>

Welcome : ${sessionScope.username}

I am in User Module
	<c:forEach items="${sessionScope.productList }" var="product">
		
			<p>Product Id : ${product.productId}</p>
			<p>Product Name : ${product.productName}</p>
			
			
			
	
	</c:forEach>

</body>
</html>