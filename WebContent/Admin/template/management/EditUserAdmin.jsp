<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="php"%>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin</title>
<!-- plugins:css -->
<link rel="stylesheet" href="Admin/template/vendors/feather/feather.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="../Admin/template/vendors/mdi/css/materialdesignicons.min.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="../Admin/template/vendors/ti-icons/css/themify-icons.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="../Admin/template/vendors/typicons/typicons.css" type="text/css"
	media="screen">
<link rel="stylesheet"
	href="../Admin/template/vendors/simple-line-icons/css/simple-line-icons.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="../Admin/template/vendors/css/vendor.bundle.base.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="../Admin/template/vendors/datatables.net-bs4/dataTables.bootstrap4.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="../Admin/template/js/select.dataTables.min.css" type="text/css"
	media="screen">
<link rel="stylesheet"
	href="../Admin/template/css/vertical-layout-light/style.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="../Admin/template/css/main.css"
	type="text/css" media="screen">
<link rel="shortcut icon" href="Admin/template/images/favicon.png" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-scroller">
		<nav
			class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
			<%@include file="../component/logoInfo.jsp"%>
			<%@include file="../component/navbarMenu.jsp"%>
		</nav>
		<div class="container-fluid page-body-wrapper">
			<%@include file='../component/themeSetting.jsp'%>
			<%@include file="../component/leftbar.jsp"%>
			<div class="main-panel">
				<div class="content-wrapper">
					<a href="user" class="btn btn-primary">Tr??? v???</a>
					<h1 class="text-center" style="padding-top: -50px">C???p nh???t th??ng tin</h1>
					<form action="editUser" method="post"
						style="width: 50%; margin: auto">
						<div class="form-group">
							<input type="hidden" name="id" class="form-control"
								value=${userEdit.getId() }>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1" style="font-size: 18px">???????ng d???n ???nh</label> <input name="avatar" type="text"
								class="form-control" value=${userEdit.getAvatar() }>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1" style="font-size: 18px">Email</label>
							<input disabled type="text" class="form-control"
								value=${userEdit.getEmail() }>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1" style="font-size: 18px">T??n ng?????i d??ng</label> <input disabled type="text" class="form-control"
								value=${userEdit.getUsername() }>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1" style="font-size: 18px">M???t kh???u</label> <input name="password" type="text" class="form-control"
								value=${userEdit.getPassword() }>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1" style="font-size: 18px">T??n ?????y ?????</label> <input name="fullname" type="text" class="form-control"
								value=${userEdit.getFullname() } />
						</div>
						<div class="form-group">
							<label for="admin" style="font-size: 15px">Quy???n qu???n tri</label>
							<php:if test="${userEdit.getRole() == 1 }">
								<label>C??</label>
								<input type="radio" class="form-check-input" id="admin1"
									name="isAdmin" value="1" checked>
								<label>Kh??ng</label>
								<input type="radio" class="form-check-input" id="admin2"
									name="isAdmin" value="0">
							</php:if>
							<php:if test="${userEdit.getRole() == 0 }">
								<label>C??</label>
								<input type="radio" class="form-check-input" id="admin1"
									name="isAdmin" value="1">
								<label>C??</label>
								<input type="radio" class="form-check-input" id="admin2"
									name="isAdmin" value="0" checked>
							</php:if>

						</div>
						<div class="justify-content-center">
							<button type="submit" class="btn btn-primary margin-center"
								style="width: 100%">Submit</button>
						</div>
					</form>

				</div>
				<%@include file="../component/footer.jsp"%>
			</div>
		</div>
	</div>
	<script src="../Admin/template/vendors/js/vendor.bundle.base.js"></script>
	<script src="../Admin/template/vendors/chart.js/Chart.min.js"></script>
	<script
		src="../Admin/template/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	<script
		src="../Admin/template/vendors/progressbar.js/progressbar.min.js"></script>

	<script src="../Admin/template/js/off-canvas.js"></script>
	<script src="../Admin/template/js/hoverable-collapse.js"></script>
	<script src="../Admin/template/js/template.js"></script>
	<script src="../Admin/template/js/settings.js"></script>
	<script src="../Admin/template/js/todolist.js"></script>
	<script src="../Admin/template/js/dashboard.js"></script>
	<script src="../Admin/template/js/Chart.roundedBarCharts.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>


