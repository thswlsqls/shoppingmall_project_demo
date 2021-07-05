<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
}

.content{
	display:flex; flex-flow:column;
	width:1200px; margin:auto;
	text-align: center;
	/* border: 1px solid red; */
}

    .checkBoxTd {
        max-width: 57px;
    }

    .checkBox {
        height: 70px;
    }

    .itemImageTd {
        max-width: 230px;
        max-height: 230px;
    }

    .itemImage {
        max-width: 100px;
        max-height: 70px;
    }

    .itemInfoTd {
        max-width: 347px;
    }

    .itemPriceTd {
        max-width: 173px;
        max-height: 100px;
    }

    .orderCountTd {
        max-width: 65px;
        max-height: 100px;
    }

    .orderCount {
        max-width: 40px;
    }

    .totalPriceTd {
        max-width: 173px;
        max-height: 100px;
    }
/* th {
	background: black;
	color: white;
}
 */
</style>
</head>
<body>
<c:import url="../default/header.jsp"/>
<div class="content"> 
		<div>
			<h3>C A R T</h3><br>
		</div>
		<div class="cartContainer">
        <table class="table">
            <th><input id="checkAll" type="checkbox"></th>
            <th>이미지</th>
            <th>상품정보</th>
            <th>상품금액</th>
            <th>수량</th>
            <th>총 금액</th>
            <tr>
                <td class="checkBoxTd">
                    <input type="checkbox" class="checkBox">
                </td>
                <td class="itemImageTd">
                	<img class="logo" src="${pageContext.request.contextPath}/resources/img/order1.jpg" width="100px;" > 
                </td>
                <td class="itemInfoTd" >   
                멍냥멍냥            
                </td>
                <td class="itemPriceTd">
                가격
                </td>
                <td class="orderCountTd">
                    <!-- itemId를 가져오기 위한 필드 -->
                    <input class="itemId" type="text" style="display: none;" value=""
                           name="itemId">
                    <input class="orderCount" type="number" value="" min="1" max="10"
                           name="orderCount"> 
                    <button class="btn btn-light orderCountModifyBtn">
                 		수정
                    </button>
                    <button type="button" class="close removeCartItemBtn" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </td>
                <td class="totalPriceTd">
                    <%-- <span
                        th:text="${#numbers.formatInteger(cartLine.itemPrice * cartLine.orderCount, 3, 'COMMA')}">
                        </span> --%>
                </td>
            </tr>
        </table>
    </div>
	<hr>
    <div style="text-align: left;">
    	<button id="orderBtn" class="btn btn-primary">선택삭제</button>
    	<!-- <button id="orderBtn" class="btn btn-primary">전체삭제</button> -->
        <button id="orderBtn" class="btn btn-primary">구매하기</button>
    </div>
    <br>
    
    <div>
    	<hr>
    	주문금액<br>
    	배송비<hr>
    	합계
    </div>
	
</div>

<c:import url="../default/footer.jsp"/>
</body>
</html>