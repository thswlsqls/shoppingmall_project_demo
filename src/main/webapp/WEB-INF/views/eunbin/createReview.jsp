<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib  uri="http://www.springframework.org/tags" prefix="tags" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function readURL(input){
		var file = input.files[0]
		console.log(file)
		if(file != ''){
			var reader = new FileReader();
			reader.readAsDataURL(file)
			reader.onload = function(e){
				console.log(e.target.result)
				$("#preview").attr("src", e.target.result)
			}
		}
	}
</script>
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
	.justifyContentCenter{justify-content: center;}
	.flex1{flex:1;}
	.blackColor{color:black;}
	.1pxSolidGreyBorder{border: solid grey;}
	.marginLeft40px{margin-left: 40px;}
	.marginTop100px{margin-top:100px;}
</style>
<body >
	<c:import url="../default/header.jsp"/>
		<div style="display:flex"class=" justifyContentCenter displayFlex greyBackground directionRow height100">
			<div class="width90  d-flex flex-column justifyContentCenter ">
			  
			  <h5 class="margin20px textAlignCenter"><b>상품후기 작성</b></h5>	 

	  		<form action="${contextPath }/member/saveReview" method="post" enctype="multipart/form-data">				
			  <div class=" whiteBackground d-flex flex-column">
				  <div class="p-2 ">
				  	<div class="d-flex p-3">

				  	<span class="margin10px blackColor">제목</span>
				  		<input type="text"  name="title"  style="width:240px; border: 1px solid grey; padding-left:10px;"  placeholder="내용을 압력해주세요" class="form-control 1pxSolidGreyBorder">
					</div>
				  </div>
				  <div class="p-2 ">
				      <div class="d-flex p-3  text-white alignItemsFlexStart">
						  <div style="position:relative; color:black" class="width50 p-2  minHeight234px maxHeight234px">
						  	<div style="height:100%;">
					  			<img class="card-img-top minWidth300px maxHeight234px" src="<tags:url value='/resources/img/${orderProductName}.jpg'/>" alt="Card image">
					  		</div>
					      </div>
						  <div style="position:relative; color:black" class="width50 p-2  marginLeft40px">
						     <div class="d-flex flex-column">
							  <div class="p-2 ">상품명 : ${orderProductName}</div>
							  <div class="marginTop100px p-2  ">
							  	<b>상품평</b>  
							  	<select name="score" style="float:right; width:80px" class="form-select" aria-label="Default select example">
								  	<optgroup label="평점">
									  <option selected value="5">5</option>
									  <option value="4">4</option>
									  <option value="3">3</option>
									  <option value="2">2</option>
									  <option value="1">1</option>
									  </optgroup>
								</select>
							  </div>
							</div>
						  </div>
						  
  						  <div style="display:flex; flex-direction:column; position:relative; color:black; height:220px; justify-content: space-between; align-items:center:" class="width50 p-2  marginLeft40px">
  						  	
							<div class="form-check margin10px">
							  <input class="form-check-input" type="radio" name="degree"  value="좋아요"  id="flexRadioDefault1" checked>
							  <label class="form-check-label" for="flexRadioDefault1">
							    좋아요
							  </label>
							</div>
							<div class="form-check margin10px">
							  <input class="form-check-input" type="radio" name="degree"  value="보통이예요"  id="flexRadioDefault2" >
							  <label class="form-check-label" for="flexRadioDefault2">
							    보통이예요
							  </label>
							</div>
							<div class="form-check margin10px">
							  <input class="form-check-input" type="radio" name="degree"  value="나빠요" id="flexRadioDefault3" >
							  <label class="form-check-label" for="flexRadioDefault3">
							    나빠요
							  </label>
							</div>
							
  						  </div>
  						  
					  </div>
				  </div>
				  <div class="p-2 ">
				  	<div class="form-group">
		  	  			<label for="content">
							<b>상세 리뷰</b><br>
						</label>
					  <textarea class="form-control"  name="content"  rows="5" id="comment"></textarea>
					</div>
				  </div>
				  <div class="p-2 ">
					<div class="custom-file">
						<input style="width: 120px; margin-right: 80px;"" type="file" name="image_file_name" onchange="readURL(this)" id="customFile">
						<label style="width: 180px;"  class="custom-file-label" for="customFile">사진 첨부</label>
						
						<img id="preview" class="margin10px" src="#" width="80" height="80" alt="x">
						<!-- 
						<img id="preview1" class="margin10px" src="#" width="80" height="80" alt="x">
						<img id="preview2" class="margin10px" src="#" width="80" height="80" alt="x">
	  					<img id="preview3" class="margin10px" src="#" width="80" height="80" alt="x">
	  					<img id="preview4" class="margin10px" src="#" width="80" height="80" alt="x"> 
	  					 -->
					</div> 
				  </div>
				  <div class="p-2 ">
				  	<hr style="border: 1px solid grey">
				  	<div class="d-flex p-3  text-white alignCenter justifyContentCenter">
					  <button type="submit" class="btn btn-primary margin20px" value="상품평쓰기">등록</button>
					  <button type="button" class="btn btn-light margin20px">삭제</button>
					</div>
				  </div>
			   </div>
			   </form>
			   
			</div>
 		</div>
	<c:import url="../default/footer.jsp"/>
</body>
</html>