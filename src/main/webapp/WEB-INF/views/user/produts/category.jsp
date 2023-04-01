<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản phẩm</title>

<style>
.pagination {
	display: flex;
	justify-content: center;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not (.active ) {
	background-color: #ddd;
}
</style>

</head>
<body>
	<p>${id_category }</p>
	<p>${c_products.size() }</p>
	<div class="well well-small">
		<h3>Danh sách sản phẩm</h3>
		
		
		<div class="row-fluid">

			<ul class="thumbnails">
			
			
			<!-- kiểm tra có sản phẩm tồn tại ko -->
					<c:if test="${c_products.size()>0 }">

						<!-- thì vẽ <ul class="thumbnails"> -->

						<ul class="thumbnails">

							<!-- lập toàn bộ danh sách -->
							<c:forEach var="pl" items="${c_products }" varStatus="loop">

									<li class="span4">
										<div class="thumbnail">
											<a class="zoomTool" href="product_details.html"
												title="add to cart"><span class="icon-search"></span>
												QUICK VIEW</a> <a href="product_details.html"><img
												src="<c:url value="/assets/user/img/${pl.img }"/>" alt=""></a>
											<div class="caption">
												<h5>${pl.name }</h5>
												<h4>
													<a class="defaultBtn" href="product_details.html"
														title="Click to view"><span class="icon-zoom-in"></span></a>
													<a class="shopBtn" href="#" title="add to cart"><span
														class="icon-plus"></span></a> <span class="pull-right">$${pl.price
														}</span>
												</h4>
											</div>
										</div>
									</li>
									
									
								<!-- nếu index chia hết cho 3 hoặc cuối danh sách thì vẽ </ul> -->
								<c:if
									test="${(loop.index + 1) % 3 == 0 || (loop.index + 1) == c_products.size() }">
									</ul>
									<!-- nếu index < size trong danh sách thì vẽ <ul class="thumbnails"> -->
									<c:if test="${(loop.index + 1) < c_products.size() }">
										<ul class="thumbnails">
									</c:if>

								</c:if>

							</c:forEach>

					</c:if>
			
			<!-- 
				<li class="span4">
					<div class="thumbnail">
						<a href="product_details.html" class="overlay"></a> <a
							class="zoomTool" href="product_details.html" title="add to cart"><span
							class="icon-search"></span> QUICK VIEW</a> <a
							href="product_details.html"><img src="assets/img/a.jpg"
							alt=""></a>
						<div class="caption cntr">
							<p>Manicure & Pedicure</p>
							<p>
								<strong> $22.00</strong>
							</p>
							<h4>
								<a class="shopBtn" href="#" title="add to cart"> Add to cart
								</a>
							</h4>
							<div class="actionList">
								<a class="pull-left" href="#">Add to Wish List </a> <a
									class="pull-left" href="#"> Add to Compare </a>
							</div>
							<br class="clr">
						</div>
					</div>
				</li>
				
				
				-->
	
			</ul>
			
			
		</div>
		

	</div>

	<div class="pagination">
		<a href="#">&laquo;</a> <a href="#">1</a> <a href="#" class="active">2</a>
		<a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">6</a>
		<a href="#">&raquo;</a>
	</div>


</body>
</html>