<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	<%@ taglib  uri="http://www.springframework.org/tags" prefix="tags" %> 
	<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
	.margin20px {margin :20px;}
	.margin10px {margin: 10px;}
	.greyBackground {background-color: grey};
	.displayFlex {display: flex;}
	.directionRow{flex-direction: row;}
	.whiteBackground {background-color: white;}
	.blackBackground {background-color: black;}
	.fontBold{font: bold;}
	.fontSizeLarger{font-size: larger;}
	.fontSizeLarge{font-size:xx-large;}
	.marginBottom10px{margin-bottom: 20px;}
	.textColorWhite{color: white;}
	.width100{width: 100%;}
	.width90{width: 90%;}
	.width50{width: 50%;}
	.bolderRight{border-right: 2px solid grey;}
	.justifyContent{justify-content:space-around;}
	.alignCenter{align-items: center;}
	.textAlignCenter{text-align: center;}
	.borderTopBottom{border-top: 1px solid grey; border-bottom: 1px solid grey;}
	.floatRight{float: right;}
	.floatLeft{float: left;}
	.height10{height: 10px;}
	.height100{height:100%;}
	.height50{height:50%;}
	.inset0{inset:0px;}
	.alignItemsFlexStart{align-items: flex-start;}
	.paddingTopBottom10px{padding-top: 10px; padding-bottom: 10px;}
	.marginTopBottom10px{margin-top: 10px; margin-bottom: 10px;}
	.marginTop10px{margin-Top: 10px;}
	.paddingTop10px{padding-top: 10px;}
	.width180px{width:180px;}
	.minHeight234px{min-height: 234px;}
	.maxHeight234px{max-height: 234px;}
	.minWidth300px{min-width: 300px;}
	.lineHeight100p{line-height: 100%;}
	.marginTop50p{margin-top: 50%;}
	.displayBlock{display: block;}
	.overflowY{overflow-y :scroll;}
	.height400px{max-height:400px;}
	.height300px{max-height:300px;}
	.height350px{max-height:350px;}
	
</style>



<body >
	<c:import url="../default/header.jsp"/>
		<div style="display:flex"class="displayFlex greyBackground directionRow">
		 <div>
		  <ul class="nav flex-column greyBackground">
		    <li class="nav-item margin20px">
		    	<div style="height: 120px; width:240px; background-color:white;">
		      		<a class="height100 alignCenter nav-link" href="${contextPath }/member/readOrders">
			      		<div class="height100 d-flex flex-column ">
					  		<div class="lineHeight100p height50 p-2  textAlignCenter marginTop10px"><b class="fontSizeLarger ">Order</b></div>
					  		<div class="lineHeight100p height50 p-2  textAlignCenter ">주문 조회</div>
						</div> 
		      		</a> 
		        </div>
		    </li>
		    <li class="nav-item margin20px">
		    	<div style="height: 120px; width:240px; background-color:white">
		      		<a class="height100 alignCenter nav-link" href="#">
			      		<div class="height100 d-flex flex-column ">
					  		<div class="lineHeight100p height50 p-2  textAlignCenter marginTop10px"><b class="fontSizeLarger">Profile</b></div>
					  		<div class="lineHeight100p height50 p-2  textAlignCenter ">회원 정보</div>
						</div> 
		      		</a>    
		        </div>
		    </li>
		    <li class="nav-item margin20px">
		    	<div style="height: 120px; width:240px; background-color:white">
		      		<a class="height100 alignCenter nav-link" href="${contextPath }/member/readWishes">
			      		<div class="height100 d-flex flex-column ">
					  		<div class="lineHeight100p height50 p-2  textAlignCenter marginTop10px"><b class="fontSizeLarger">Wishlist</b></div>
					  		<div class="lineHeight100p height50 p-2  textAlignCenter ">관심 상품</div>
						</div> 
		      		</a>   
		        </div>
		    </li>
		    <li class="nav-item margin20px">
		    	<div style="height: 120px; width:240px; background-color:white">
		      		<a class="height100 alignCenter nav-link" href="${contextPath }/member/readMileage">
			      		<div class="height100 d-flex flex-column ">
					  		<div class="lineHeight100p height50 p-2  textAlignCenter marginTop10px"><b class="fontSizeLarger">Mileage</b></div>
					  		<div class="lineHeight100p height50 p-2  textAlignCenter ">적립금</div>
						</div> 
		      		</a>    
		        </div>
		    </li>
		    <li class="nav-item margin20px">
		    	<div style="height: 120px; width:240px; background-color:white">
		      		<a class="height100 alignCenter nav-link" href="#">
			      		<div class="height100 d-flex flex-column ">
					  		<div class="lineHeight100p height50 p-2  textAlignCenter marginTop10px"><b class="fontSizeLarger">My board</b></div>
					  		<div class="lineHeight100p height50 p-2  textAlignCenter ">게시물 관리</div>
						</div> 
		      		</a>    
		        </div>
		    </li>
		  </ul>
		 </div>
	     <div class="width100 whiteBackground d-flex flex-column mb-3 margin20px ">
	      <div class="width90 p-2 margin10px fontBold fontSizeLarge marginBottom10px ">ORDERS</div>
	      <h2>${deleveryStates }</h2>
	      <div class="width90 p-2 blackBackground textColorWhite margin10px">나의 주문 처리 현황(최근 3개월 기준)</div>
	      <div class="width90 p-2 margin10px">
			<div class="justifyContent width100 d-flex p-3 whiteBackground">
			  <div class="p-2 bolderRight width100">
			  	<div class="d-flex flex-column">
				  <div class="p-2  textAlignCenter"><b>입금전</b></div>
				  <div class="p-2  textAlignCenter">${beforeDepositStateCount }</div>
				</div>
			  </div>
			  <div class="p-2 bolderRight width100">
			  	<div class="d-flex flex-column">
				  <div class="p-2  textAlignCenter"><b>배송준비중</b></div>
				  <div class="p-2  textAlignCenter">${readyToDeleveryStateCount }</div>
				</div>
			  </div>
			  <div class="p-2 bolderRight width100">
			  	<div class="d-flex flex-column">
				  <div class="p-2  textAlignCenter"><b>배송중</b></div>
				  <div class="p-2  textAlignCenter">${onDeleveryStateCount }</div>
				</div>
			  </div>
			  <div class="p-2 width100">
			  	<div class="d-flex flex-column ">
				  <div class="p-2  textAlignCenter"><b>배송완료</b></div>
				  <div class="p-2  textAlignCenter">${DeleveryOverStateCount }</div>
				</div>
			  </div>
			</div>	     
	     </div>
   	      <div class="width90 blackBackground textColorWhite p-2 margin10px">주문 상품 상세보기</div>
     	  <c:if test="${userOrderList.size() == 0 }">
			 <div class="d-flex p-3 bg-secondary text-white alignItemsFlexStart">주문 내역 없음</div>
		  </c:if>
		  <div class="width90 margin10px height350px overflowY">
		  <c:forEach var="orderDto"  items="${userOrderList }"  varStatus="status">
		  <c:set var="statusIndex" value="${status.index }" />
	      <div class="width90 p-2 margin10px margin10px">
       	    <div class="width100 p-2 margin10px borderTopBottom positionRelative">
  	      		<sapn>주문번호</sapn>
  	      		<span >${orderDto.orderId }</span>
  	      		<span style="margin-right:10px" class="floatRight"  >&nbsp;&nbsp;&nbsp;${orderDto.orderCreateDate }</span>	
 		  	    <sapn  style="position: relative; float:right;">주문일자</sapn>
  	        </div>
  	        <div style="color:black; position:relative; min-width:700px" class="d-flex p-3  text-white alignItemsFlexStart">
			  <div class="width50 p-2  minHeight234px maxHeight234px">
			  	<div style="height:100%;">
		  			<img class="card-img-top minWidth300px maxHeight234px" src="<tags:url value='/resources/img/${orderDto.orderProductName}.jpg  '/>" alt="Card image">
		  		</div>
		      </div>
			  <div style="color:black; position:relative"class="width50 p-2  ">
			     <div class="d-flex flex-column">
				  <div class="p-2 ">상품명 : ${orderDto.orderProductName }</div>
				  <div class="p-2 ">수량 : ${orderDto.orderCounts }</div>
				  <div class="p-2 ">가격 : ${orderDto.totalPrice }</div>
				  <div class="marginTopBottom10px p-2  "><b>배송 상태 : ${deleveryStateList[status.index]}</b></div>
				  <button onclick="location.href='${contextPath }/review/createReview?orderProductId=${orderDto.orderProductId}&orderProductName=${orderDto.orderProductName }'" type="button" class="btn btn-secondary width180px">
				  	상품 후기 작성
				  <a href="${contextPath }/review/createReview"></a>
				  </button>
				</div>
			  </div>
		     </div>
		     </div>
		    </c:forEach>
		    </div>
	      </div>
	     </div>
 		</div>
	<c:import url="../default/footer.jsp"/>
</body>
</html>