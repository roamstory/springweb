<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">READ BOARD</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" method="post">

					<input type='hidden' name='bbsno' value="${boardVO.bbsno}">
					<input type='hidden' name='page' value="${criteriaVO.page}">
					<input type='hidden' name='perPageNum' value="${criteriaVO.perPageNum}">
					<input type='hidden' name='searchType' value="${criteriaVO.searchType}">
					<input type='hidden' name='keyword' value="${criteriaVO.keyword}">

				</form>

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">Title</label> 
						<input type="text" name='title' class="form-control" value="${boardVO.title}" >
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Content</label>
						<textarea class="form-control" name="content" rows="3" >${boardVO.content}</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Writer</label> 
						<input type="text" name="writer" class="form-control" value="${boardVO.writer}" >
					</div>
				</div>
				<!-- /.box-body -->

				<div class="box-footer">
					<button type="submit" class="btn btn-warning">Modify</button>
					<button type="submit" class="btn btn-danger">REMOVE</button>
					<button type="submit" class="btn btn-primary">LIST ALL</button>
				</div>


				<script>
					$(document).ready(function() {

						var formObj = $("form[role='form']");

						console.log(formObj);

						$(".btn-warning").on("click", function() {
							formObj.attr("action", "/sboard/modifyPage");
							formObj.attr("method","get");
							formObj.submit();
						});

						$(".btn-danger").on("click", function() {
							formObj.attr("action", "/sboard/removePage");
							formObj.submit();
						});

						$(".btn-primary").on("click", function(){
							formObj.attr("method", "get");
							formObj.attr("action", "/sboard/list");
							formObj.submit();
						});

					});
				</script>




			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<%@include file="../include/footer.jsp"%>