<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %> 
	<%@taglib  uri="http://www.springframework.org/tags" prefix="tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			  <div class=" whiteBackground d-flex flex-column">
				  <div class="p-2 ">
				  	<div class="d-flex p-3">
					  	<span class="margin10px blackColor">제목</span>
				  		<input style="width:240px; border: 1px solid grey; padding-left:10px;" type="text" placeholder="내용을 압력해주세요" class="form-control-plaintext 1pxSolidGreyBorder">
					</div>
				  </div>
				  <div class="p-2 bg-warning">
				      <div class="d-flex p-3 bg-secondary text-white alignItemsFlexStart">
						  <div class="width50 p-2 bg-info minHeight234px maxHeight234px">
						  	<div style="height:100%;">
					  			<img class="card-img-top minWidth300px maxHeight234px" src="<tags:url value='/resources/img/Nature-Fresh-Product-scene-Mockup-scaled.jpg'/>" alt="Card image">
					  		</div>
					      </div>
						  <div class="width50 p-2 bg-warning marginLeft40px">
						     <div class="d-flex flex-column">
							  <div class="p-2 bg-info">상품명 : </div>
							  <div class="marginTop100px p-2 bg-primary ">
							  	<b>상품평 : </b>
							  	<select style="float:right">
							  	<optgroup label="">
							  		<option>5</option>
							  		<option>4</option>
							  		<option>3</option>
							  		<option>2</option>
							  		<option>1</option>
							  	</optgroup>
							  </select>	
							  </div>
							</div>
						  </div>
  						  <div class="width50 p-2 bg-info marginLeft40px">
  						  	
  						  	<div class="input-group mb-3">
							  <div class="input-group-prepend">
							    <div class="input-group-text">
							      <input type="checkbox">
							    </div>
							  </div>
							  <input type="text" class="form-control" placeholder="좋아요">
							</div>
  						  	<div class="input-group mb-3">
							  <div class="input-group-prepend">
							    <div class="input-group-text">
							      <input type="checkbox">
							    </div>
							  </div>
							  <input type="text" class="form-control" placeholder="보통이예요">
							</div>
  						  	<div class="input-group mb-3">
							  <div class="input-group-prepend">
							    <div class="input-group-text">
							      <input type="checkbox">
							    </div>
							  </div>
							  <input type="text" class="form-control" placeholder="나빠요">
							</div>
							
  						  </div>
					  </div>
				  </div>
				  <div class="p-2 bg-primary">
				  	<div class="form-group">
					  <textarea class="form-control" rows="5" id="comment">상세 리뷰</textarea>
					</div>
				  </div>
				  <div class="p-2 bg-warning">
					<div class="custom-file">
						<input style="width: 120px; margin-right: 80px;"" type="file" name="image_file_name" onchange="readURL(this)" id="customFile">
						<label style="width: 180px;"  class="custom-file-label" for="customFile">사진 첨부</label>
						<img id="preview" class="margin10px" src="#" width="80" height="80" alt="x">
						<img id="preview1" class="margin10px" src="#" width="80" height="80" alt="x">
						<img id="preview2" class="margin10px" src="#" width="80" height="80" alt="x">
	  					<img id="preview3" class="margin10px" src="#" width="80" height="80" alt="x">
	  					<img id="preview4" class="margin10px" src="#" width="80" height="80" alt="x"> 
					</div> 
				  </div>
				  <div class="p-2 bg-info">
				  	<hr style="border: 1px solid grey">
				  	<div class="d-flex p-3 bg-secondary text-white alignCenter justifyContentCenter">
					  <button type="button" class="btn btn-primary margin20px">등록</button>
					  <button type="button" class="btn btn-light margin20px">삭제</button>
					</div>
				  </div>
			   </div>
			</div>
			
 		</div>
	<c:import url="../default/footer.jsp"/>
</body>
</html>