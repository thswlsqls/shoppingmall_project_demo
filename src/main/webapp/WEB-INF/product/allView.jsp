<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() { // 처음 카테고리 체크 설정
	    $("input:checkbox[id='all']").prop("checked", true);
	    $("input:checkbox[id='cat']").prop("checked", false);
	    $("input:checkbox[id='dog']").prop("checked", false);
	});
	function movepage(page) { // 페이지 이동
		window.document.location.href=page;
		return;
	}
</script>
<style type="text/css">
	.kategorie{ width:20%; background-color: gray; text-align: center; }
	.content{ width:80%; background-color: gray; text-align: center; }
	.content a { color: black; text-decoration: none; }
	a:link { text-decoration: none;}
	a:visited { text-decoration: none;}
	#paging{ background-color: white; }

</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div class="wrap">
		<h1>All</h1><br>
		<div class="kategorie">
			<h2>카테고리</h2><br>
			<h3>수제간식</h3><br>
			<input type="checkbox" id="all" name="kategorie" value="all" onclick="movepage('http://localhost:8085/root/product/allview');">All<br>
			<input type="checkbox" id="dog" name="kategorie" value="dog" onclick="movepage('http://localhost:8085/root/product/dogview/dog');">강아지<br>
			<input type="checkbox" id="cat" name="kategorie" value="cat" onclick="movepage('http://localhost:8085/root/product/catview/cat');">고양이<br>
		</div>
		<div class="content">
			<a href="${contextPath }/product/recommendallview">인기도순</a>&nbsp;&nbsp;
			<a href="${contextPath }/product/priceallview">낮은가격순</a>&nbsp;&nbsp;
			<!--  <a href="#">최신등록순</a>&nbsp;&nbsp; -->
			<a href="#">평점높은순</a><br>
			<div id="product">
				<c:forEach var="dto" items="${product}">
					<a href="${contextPath }/product/productdetail/${dto.productId}">
						<div>
							<img alt="이미지가 없습니다" width="100px" height="100px"
								src="${contextPath }/download?file=${dto.productFile1 }">
							<div>상품명 : ${dto.productName }</div>
							<div>가격 : ${dto.productPrice }</div>
							<div>추천수 : ${dto.productRecommendCounts }</div>
							<div>재고 : ${dto.productStockCounts }</div><br>
						</div>
					</a>
				</c:forEach>
			</div>
			<div id="paging">
				<c:forEach var="num" begin="1" end="${repeat }">
					<a href="${contextPath }/product/allview?num=${num}">${num } &nbsp;</a>
				</c:forEach>
			</div>
		</div>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>