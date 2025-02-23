<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update page</title>

<style>
.gradient-custom-3 {
	/* fallback for old browsers */
	background: #84fab0;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5),
		rgba(143, 211, 244, 0.5));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 0.5),
		rgba(143, 211, 244, 0.5))
}

.gradient-custom-4 {
	/* fallback for old browsers */
	background: #84fab0;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1))
}
</style>



</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>


	<section class="vh-100 bg-image"
		style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
		<div class="mask d-flex align-items-center h-100 gradient-custom-3">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12 col-md-9 col-lg-7 col-xl-6">
						<div class="card" style="border-radius: 15px;">
							<div class="card-body p-5">
								<h2 class="text-uppercase text-center mb-5">Update Product</h2>

								<form action="update-product" method="post">

									<div data-mdb-input-init class="form-outline mb-4">
										<input type="text" name="pid" id="form3Example1cg"
											class="form-control form-control-lg" readonly="readonly" value="${p.pid}" />
									</div>
									<div data-mdb-input-init class="form-outline mb-4">
										<input type="text" name="name" id="form3Example1cg"
											class="form-control form-control-lg"
											placeholder="enter product name" value="${p.name}" />
									</div>

									<div data-mdb-input-init class="form-outline mb-4">
										<input type="number" name="price" id="form3Example3cg"
											class="form-control form-control-lg"
											placeholder="enter product price" value="${p.price}" />
									</div>

									<div data-mdb-input-init class="form-outline mb-4">
										<input type="number" name="quantity" id="form3Example4cg"
											class="form-control form-control-lg"
											placeholder="enter quentity of product" value="${p.quantity}" />
									</div>

									<div data-mdb-input-init class="form-outline mb-4">
										<input type="text" name="category" id="form3Example4cdg"
											class="form-control form-control-lg"
											placeholder="enter category of product" value="${p.category}" />
									</div>

									<br>

									<div class="d-flex justify-content-center">
										<button type="submit" data-mdb-button-init
											data-mdb-ripple-init
											class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Update</button>
									</div>



								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>