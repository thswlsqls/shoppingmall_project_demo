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
	$(document).ready(function() { // 상품상세, 상품평, 상품문의 버튼들 특정 위치부터 화면 고정
		document.getElementById("qna").style.display="none";
	    var nav = $('#nav').offset().top;
	    $(window).scroll(function() {
	    	if ($(this).scrollTop() >= nav) {
	    		$('#nav').css('position', 'fixed');
	    		$('#nav').css('top', '0');
	    	}else{
	    		$('#nav').css('position', 'absolute');
	    		$('#nav').css('top', nav);
	    	}
	    });
			$.ajax({
				url:"ajax_result",
				type:"GET",
				success: function(cnt){
					var html = "<div>상품명</div>
								<br>
								<div>가격</div>
								<br>"
					$("#relativeProduct").innerHTML(html)
				},
				error: function(){
					alert('연결 실패')
				}
			})
	})
	function fnMove(seq){ // 상품상세, 상품평, 상품문의 버튼들 누르면 화면 이동
	    var offset = $("#div" + seq).offset();
	    $('html, body').animate({scrollTop : offset.top}, 400);
	}
	function prdCnt(type){ // 수량 변경시 가격 변경
		const prdCnt = document.getElementById('prdCnt');
		const price = document.getElementById('price');
		let number = prdCnt.innerText;
		let priceN = price.innerText;
		if(type === 'plus') {
		    number = parseInt(number) + 1;
		    priceN = parseInt(priceN) + ${productDetail.productPrice };
		  }else if(type === 'minus')  {
			  if(number == '1'){
				  
			  }else{
				  number = parseInt(number) - 1;
				  priceN = parseInt(priceN) - ${productDetail.productPrice };
			  }
		  }
		prdCnt.innerText = number;
		price.innerText = priceN;
	}
	function qna(){ // 문의하기 버튼 누르면 문의하기 띄우기
		document.getElementById("qna").style.display="block";
	}
	function movepage(page){ // 페이지 이동
	window.document.location.href=page;
	return;
	}
</script>
<style type="text/css">
	#qna{ box-shadow : rgba(0,0,0,0.5) 0 0 0 9999px, rgba(0,0,0,0.5) 2px 2px 3px 3px; z-index : 100;}
</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div class="wrap">
		<h1>상품 상세페이지</h1>
		<div>
			<img alt="이미지가 없습니다" width="100px" height="100px"
								src="${contextPath }/download?file=${productDetail.productFile1 }">
			<div>상품명 : ${productDetail.productName }</div>
			<br>
			<div>가격 : <span id="price">${productDetail.productPrice }</span>원</div>
			<br>
			<div>배송비 : </div>
			<br>
			<div>적립금 : </div>
			<br>
			<div>판매자 : ${productDetail.productSellerId }</div>
			<br>
			<div>재고 : ${productDetail.productStockCounts }</div>
			<br>
			<div>평점 : </div>
			<br>
			<span>추천수 : ${productDetail.productRecommendCounts }</span>
			<%if(session.getAttribute("loginUser") != null){%>
			<input type="button" value="+" onclick="movepage('http://localhost:8085/root/product/updaterecommend/${productDetail.productId }');"><br> 
			<%}else{%> 
				<br>
			<%}%>
			<span>수량 : </span>
			<input type="button" value="-" onclick='prdCnt("minus")'> 
			<span id="prdCnt">1</span> 
			<input type="button" value="+" onclick='prdCnt("plus")'><br>
			<input type="button" value="장바구니 담기" onclick="#"> <input
				type="button" value="바로 구매" onclick="#">
		</div>
		<hr>
		<h2>관련 상품들</h2>
		<div id="relativeProduct">
			<div>상품명</div>
			<br>
			<div>가격</div>
			<br>
		</div>
		<hr>
		<div id="nav">
			<input type="button" value="상품상세" onclick="fnMove('1')"> 
			<input type="button" value="상품평" onclick="fnMove('2')"> 
			<input type="button" value="상품문의" onclick="fnMove('3')">
		</div>		
		<hr>
		<div id="div1">
			<hr>
			<hr>
			<h2>상품 상세</h2>
			<div>상품 상세 내용</div><br>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
			<div>${productDetail.productName }</div>
		</div>
		<hr>
		<div id="div2">
			<hr>
			<hr>
			<h2>상품평</h2>
			<div>
				<c:forEach var="rev" items="${review}">
					<div>
						<img alt="이미지가 없습니다" width="100px" height="100px"
								src="${contextPath }/download?file=${rev.productFile1 }">
						<img alt="이미지가 없습니다" width="100px" height="100px"
								src="${contextPath }/download?file=${rev.productFile2 }">
						<img alt="이미지가 없습니다" width="100px" height="100px"
								src="${contextPath }/download?file=${rev.productFile3 }">
						<img alt="이미지가 없습니다" width="100px" height="100px"
								src="${contextPath }/download?file=${rev.productFile4 }">
						<img alt="이미지가 없습니다" width="100px" height="100px"
								src="${contextPath }/download?file=${rev.productFile5 }">
								
						<div>작성자 : ${rev.reviewWriterId }</div><br>
						<div>평점 : ${rev.productScore }</div><br>
						<div>상품평 내용 : ${rev.reviewContent }</div><br>
					</div>
				</c:forEach>
			</div>
		</div>
		<hr>
		<div id="div3">
			<hr>
			<hr>
			<h2>상품문의</h2>
			<%if(session.getAttribute("loginUser") != null){%>
			<input type="button" value="문의하기" onclick="qna()"><br>
			<%}else{%> 
				<br>
			<%}%>
			<div id="qna">
				<table border="1">
					<tr>
						<span>${productDetail.productName }</span><br>
						<span>문의 내용</span><br>
						<input type="button" value="등록" onclick="">
						<input type="button" value="취소" onclick='$("#qna").hide();'>
						<!--  <form action="${contextPath }/product/addqnaq/${productDetail.productId}" method="POST">
							<input type="hidden" name="writerId" value="loginUser">
							<textarea name="questionContent"></textarea><br>
							<input type="submit" value="등록">
							<input type="button" value="취소" onclick='$("#qna").hide();'>
						</form>
						-->
					</tr>
				</table>
			</div>
			<br>
			<!--  
			<c:forEach var="qnaq" items="${qnaq}">
				<table border="1">
					<tr>
						<span>문의</span><br>
						<div>작성자 : ${qnaq.questionWriterId }</div><br>
						<div>내용 : ${qnaq.questionContent }</div><br>
						<div>질문 생성 날짜 : ${qnaq.questionCreateDate }</div><br>
					</tr>
				</table>
			</c:forEach>
			<c:forEach var="qnaa" items="${qnaa}">
				<table border="1">
					<tr>
						<span>답변</span><br>
						<div>내용 : ${qnaa.answerContent }</div><br>
						<div>답변 생성 날짜 : ${qnaa.answerCreateDate }</div><br>
					</tr>
				</table>
			</c:forEach>
			-->
		</div>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>