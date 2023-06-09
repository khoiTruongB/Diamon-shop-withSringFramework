<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Trang chủ</title>
<body>
	<!-- Body Section -->
	<div class="row">

		<div id="sidebar" class="span3">


			<div class="well well-small">
				<ul class="nav nav-list">

					<c:forEach var="cl" items="${category }">

						<li><a href='<c:url value="/category/${cl.id }"/>'> <span
								class="icon-chevron-right"></span>${cl.name }
						</a></li>

					</c:forEach>


					<li><a href="products.html"><span
							class="icon-chevron-right"></span>See All Jewelry & Watches</a></li>
					<li style="border: 0">&nbsp;</li>

					<li><a class="totalInCart" href="cart.html"><strong>Total
								Amount <span class="badge badge-warning pull-right"
								style="line-height: 18px;">$448.42</span>
						</strong></a></li>
				</ul>
			</div>




			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img
					src="<c:url value="/assets/user/img/paypal.jpg"/>"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/bootstrap-ecommerce-templates.png"/>"
							alt="bootstrap ecommerce templates">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/shopping-cart-template.PNG"/>"
							alt="shopping cart template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/bootstrap-template.png"/>"
							alt="bootstrap template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
			</ul>

		</div>
		<div class="span9">
			<!-- ---------------------------------------------------------------------------------------- -->
			<div class="well np">
				<div id="myCarousel" class="carousel slide homCar">
					<div class="carousel-inner">

						<c:forEach var="sl" items="${slides}">

							<div class="item">
								<img style="width: 100%"
									src="<c:url value="/assets/user/img/slides/${sl.img }"/>"
									alt="bootstrap ecommerce templates">
								<div class="carousel-caption">
									<h4>${sl.caption }</h4>
									<p>
										<span>${sl.content }</span>
									</p>
								</div>
							</div>

						</c:forEach>



					</div>
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
						href="#myCarousel" data-slide="next">&rsaquo;</a>
				</div>
			</div>

			<!-- ---------------------------------------------------------------------------------------- -->

			<!-- New Products -->
			<div class="well well-small">
				<h3>Sản phẩm mới</h3>
				<hr class="soften" />
				<div class="row-fluid">
					<div id="newProductCar" class="carousel slide">
						<div class="carousel-inner">
							<div class="item active">
								<ul class="thumbnails">
									<li class="span3">
										<div class="thumbnail">
											<a class="zoomTool" href="product_details.html"
												title="add to cart"><span class="icon-search"></span>
												QUICK VIEW</a> <a href="#" class="tag"></a> <a
												href="product_details.html"><img
												src="<c:url value="/assets/user/img/bootstrap-ring.png"/>"
												alt="bootstrap-ring"></a>
										</div>
									</li>

									<li class="span3">
										<div class="thumbnail">
											<a class="zoomTool" href="product_details.html"
												title="add to cart"><span class="icon-search"></span>
												QUICK VIEW</a> <a href="#" class="tag"></a> <a
												href="product_details.html"><img
												src="<c:url value="/assets/user/img/i.jpg"/>" alt=""></a>
										</div>
									</li>
									<li class="span3">
										<div class="thumbnail">
											<a class="zoomTool" href="product_details.html"
												title="add to cart"><span class="icon-search"></span>
												QUICK VIEW</a> <a href="#" class="tag"></a> <a
												href="product_details.html"><img
												src="<c:url value="/assets/user/img/g.jpg"/>" alt=""></a>
										</div>
									</li>
									<li class="span3">
										<div class="thumbnail">
											<a class="zoomTool" href="product_details.html"
												title="add to cart"><span class="icon-search"></span>
												QUICK VIEW</a> <a href="product_details.html"><img
												src="<c:url value="/assets/user/img/s.png"/>" alt=""></a>
										</div>
									</li>
								</ul>
							</div>
							<div class="item">
								<ul class="thumbnails">
									<li class="span3">
										<div class="thumbnail">
											<a class="zoomTool" href="product_details.html"
												title="add to cart"><span class="icon-search"></span>
												QUICK VIEW</a> <a href="product_details.html"><img
												src="<c:url value="/assets/user/img/i.jpg"/>" alt=""></a>
										</div>
									</li>
									<li class="span3">
										<div class="thumbnail">
											<a class="zoomTool" href="product_details.html"
												title="add to cart"><span class="icon-search"></span>
												QUICK VIEW</a> <a href="product_details.html"><img
												src="<c:url value="/assets/user/img/f.jpg"/>" alt=""></a>
										</div>
									</li>
									<li class="span3">
										<div class="thumbnail">
											<a class="zoomTool" href="product_details.html"
												title="add to cart"><span class="icon-search"></span>
												QUICK VIEW</a> <a href="product_details.html"><img
												src="<c:url value="/assets/user/img/h.jpg"/>" alt=""></a>
										</div>
									</li>
									<li class="span3">
										<div class="thumbnail">
											<a class="zoomTool" href="product_details.html"
												title="add to cart"><span class="icon-search"></span>
												QUICK VIEW</a> <a href="product_details.html"><img
												src="<c:url value="/assets/user/img/j.jpg"/>" alt=""></a>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<a class="left carousel-control" href="#newProductCar"
							data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
							href="#newProductCar" data-slide="next">&rsaquo;</a>
					</div>
				</div>


			</div>
			<!-- Featured Products -->
			<div class="well well-small">
				<h3>
					<a class="btn btn-mini pull-right" href="products.html"
						title="View more">VIew More<span class="icon-plus"></span></a> Sản
					phẩm nổi bật
				</h3>
				<hr class="soften" />
				<div class="row-fluid">
				
				
					<!-- kiểm tra có sản phẩm tồn tại ko -->
					<c:if test="${products.size()>0 }">

						<!-- thì vẽ <ul class="thumbnails"> -->

						<ul class="thumbnails">

							<!-- lập toàn bộ danh sách -->
							<c:forEach var="pl" items="${products }" varStatus="loop">

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
									test="${(loop.index + 1) % 3 == 0 || (loop.index + 1) == products.size() }">
									</ul>
									<!-- nếu index < size trong danh sách thì vẽ <ul class="thumbnails"> -->
									<c:if test="${(loop.index + 1) < products.size() }">
										<ul class="thumbnails">
									</c:if>

								</c:if>

							</c:forEach>

					</c:if>


				</div>
			</div>

			<div class="well well-small">
				<a class="btn btn-mini pull-right" href="#">View more <span
					class="icon-plus"></span></a> Popular Products
			</div>
			<hr>
			<div class="well well-small">
				<a class="btn btn-mini pull-right" href="#">View more <span
					class="icon-plus"></span></a> Best selling Products
			</div>
		</div>
	</div>
</body>