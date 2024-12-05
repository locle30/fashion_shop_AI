<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>HardMode - Login</title>
                    <base href="${pageContext.servletContext.contextPath}/">

                    <link href="<c:url value='/resources/home/dist/css/reset.css' />" rel="stylesheet">
                    <link href="<c:url value='/resources/home/dist/css/login.css' />" rel="stylesheet">
                    <link rel="icon" type="image/png" href="https://d-themes.com/html/riode/images/icons/favicon.png">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"
                    />

                    <link href="<c:url value='/resources/home/dist/css/owl.carousel.css' />" rel="stylesheet">
                    <link href="<c:url value='/resources/home/dist/css/owl.theme.default.css' />" rel="stylesheet">
                </head>

                <body>


                    <%@include file="/WEB-INF/views/header.jsp"%> 
		<section class="header-top">
			<div class="container d-flex jc-space-between ai-center">
				<div class="header-left">
					<p>Welcome to HardMode store message or remove it!</p>
				</div>

				<div class="header-right">
					<a class="hover-p-color" href=""> <i
						class="fa-solid fa-location-dot"></i>Contact Us
					</a> <a class="hover-p-color" href=""> <i
						class="fa-solid fa-circle-info"></i>Need help
					</a>
				</div>
			</div>
		</section>

		<section class="header-middle">
			<div class="container d-flex jc-space-between ai-center">
				<div class="header-left  d-flex jc-space-between ai-center">
					<div class="logo">
						<a href="home/index.htm"><img
							src="https://d-themes.com/html/riode/images/demos/demo4/logo.png"
							alt=""></a>
					</div>

					<ul class="menu  d-flex jc-space-between ai-center">
						<li><a href="home/index.htm">Home</a></li>
						<li><a href="home/products.htm">Products</a></li>
						<li><a href="">Sale</a></li>
						<li><a href="">About</a></li>
						<li class="search d-flex ai-center"><input type="text"
							placeholder="Search..."> <a href=""> <i
								class="fa-solid fa-magnifying-glass"></i>
						</a></li>
					</ul>
				</div>

				<ul class="header-right  d-flex jc-space-between ai-center">
		<!-- getSession -->
					<c:if test="${acc != null}">
						<c:if test="${acc.getrole().getIdRole() == 2}">
							<li><a href="user/userHome.htm " class="user-area"> <span
									class="user-name">${acc.getFullname() }</span>
									<div class="user-thumbnail">
										<c:if test="${!acc.getImage().toString().equals(null)}">
											<img src="${acc.getImage() }" alt="">
										</c:if>
									</div>
							</a></li>
						</c:if>
						<c:if test="${acc.getrole().getIdRole() == 1}">
							<li><a href="admin/adminHome.htm " class="user-area"> <span
									class="user-name">${acc.getFullname() }</span>
									<div class="user-thumbnail">
										<c:if test="${!acc.getImage().toString().equals(null)}">
											<img src="${acc.getImage() }" alt="">
										</c:if>
									</div>
							</a></li>
						</c:if>
					</c:if>

					<c:if test="${acc == null}">
						<li><a href="user/login.htm"><i class="fa-solid fa-user"></i></a></li>
					</c:if>
					
					
					<!-- Cart-Shopping  -->
                    <li class="cart-group">
                        <a href="cart/checkout.htm">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </a>
                    </li>
				</ul>
			</div>
		</section>

		<div class="header-support"></div>

	</header>

                        <!-- Main -->

                        <main class="main login-container">
                            <div class="container">

                                <form:form class="login-form" action="user/login.htm" modelAttribute="user">
                                    <h2>Login</h2>

                                    <form:input type="text" path="user_name" placeholder="Username" />
                                    <h5><form:errors path="user_name"></form:errors></h5>
                                    <!-- <span class="errors">Have to type account</span> -->
                                    <form:input type="password" path="password" placeholder="Password" />
                                    <h5><form:errors path="password"></form:errors></h5>
                                    <!-- <span class="errors">Wrong password</span> -->

                                    <div class="link">
                                        <a href="user/register.htm">I don't have account</a>
                                        <a href="user/forgotpassword.htm">Lost your password?</a>
                                    </div>
                                  	
                                  	<h5 style="margin: 12px;">${message }</h5>
                                    <!-- <br> -->
                                    <form:button>Login</form:button>
                                </form:form>
                            </div>
                        </main>

                        <%@include file="/WEB-INF/views/footer.jsp"%>
                </body>

                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
                <script src="<c:url value='/resources/home/dist/js/owl.carousel.js' />"></script>
                <script src="<c:url value='/resources/home/dist/js/home.js' />"></script>

                </html>