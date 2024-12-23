<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HardMode - Bill Report</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="icon" type="image/png"
	href="https://d-themes.com/html/riode/images/icons/favicon.png">

<link href="<c:url value='/resources/home/dist/css/reset.css' />"
	rel="stylesheet">
<link href="<c:url value='/resources/home/dist/css/adminAccount.css' />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body>

	<aside class="aside">
		<a href="admin/adminHome.htm" class="admin">
			<div class="logo">
				<i class="fa-solid fa-a"></i>
			</div> Admin
		</a>

		<ul class="functions">
			<li class="function"><a href="admin/adminAccount.htm">
					<div class="icon">
						<i class="fa-solid fa-users"></i>
					</div> Account
			</a></li>

			<li class="function"><a href="admin/adminBill.htm">
					<div class="icon">
						<i class="fa-solid fa-receipt"></i>

					</div> Bill
			</a></li>

			<li class="function"><a href="admin/adminProducts.htm"
				class="active">
					<div class="icon">
						<i class="fa-solid fa-shirt"></i>
					</div> Products
			</a></li>


		</ul>

		<button class="btn-log-out"><a href="user/logout.htm">Log out</a></button>
	</aside>

	<!-- Main -->
	<main class="main">

		<!-- Map  -->
		<div class="main-header">
			<div class="header-left">
				<h2>Manage Products</h2>

				<div class="map">
					<a href="home/index.htm">Home</a> / <a href="admin/adminHome.htm">Admin</a>
					/ <a href="admin/adminProducts.htm">Products</a>
				</div>
			</div>

			<div class="header-right">
				<a href="admin/adminAddProd.htm" class="btn-add-prod"><i
					class="fa-solid fa-plus"></i>Add product</a>
			</div>
		</div>



		<!-- Main talbe data  -->
		<div class="main-content">
			<div class="table-container">
				<table>
					<tr>
						<th>ID</th>
						<th>Image</th>
						<th>Category</th>
						<th>Name</th>
						<th>Price</th>
						<th>View</th>
					</tr>

					<div class="scroll">
						
						
    					
    					<c:forEach var="p" items="${listProducts }" begin="0" end="${size }">
    	 
    							<tr>
		                            <td>${p.idProduct }</td>
		                            <td><img style="width: 120px; margin: 0 auto;" src="${p.image }"  ></td>
		                            <td>${p.getProductCategory().nameCategory }</td>
		                            <td>${p.name }</td>
		                            <td>$${p.price }</td>
		                            <td><a href="admin/adminProd/${p.idProduct }.htm" style="color:#333;" class="icon"><i
									class="fa-solid fa-circle-info"></i></a></td>
							
		                        </tr> 
    					</c:forEach>
					</div>

				</table>
			</div>


		</div>
	</main>



</body>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	referrerpolicy="no-referrer"></script>
<script src="<c:url value='/resources/home/dist/js/owl.carousel.js' />"></script>
<script src="<c:url value='/resources/home/dist/js/home.js' />"></script>

</html>