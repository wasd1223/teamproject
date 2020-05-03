<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/include/menu.jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<title>Dog Project</title>
<meta charset="utf-8">
<%@ include file="../include/header.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="${path}/include/css/menubar.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${path}/include/css/master.css">
<link rel="stylesheet" href="${path}/include/css/searchbutton.css">
<link rel="stylesheet" href="${path}/include/css/footer.css">
<link rel="stylesheet" href="${path}/include/css/totalLayout.css">
<script type="text/javascript">
	$(document).ready(function() {
		var $nav = $('nav');
		$(window).scroll(function() {
			if ($(document).scrollTop() > 180) {
				$nav.addClass('scroll');
			} else {
				$nav.removeClass('scroll');
			}
		});
	});

	$(function() {
		$("#btnOption").click(function() {
			/* $("#selectOption option:selected").val();
			var index = $("#selectOption option").index($("#selectOption option:selected")); */

			location.href = $("#selectOption option:selected").val();
		});
	});
</script>


</head>

<body>
<!-- Header 시작점 -->
	<header id="main-header">
		<div class="headermenu">
			<a href="/project/"><img src="${path}/images/Logo/Logo.png"
				width="100px" height="35px" id="logo"></a>
			<form name="form1" method="post"
				action="${path}/shop/product/list.do">
				<select name="search_option" class="h-search-bar h-option">
					<option value="all"
						<c:if test="${map.search_option == 'all'}">selected</c:if>>전체</option>
					<option value="product_code"
						<c:if test="${map.search_option == 'product_code'}">selected</c:if>>상품
						종류</option>
					<option value="product_name"
						<c:if test="${map.search_option == 'product_name'}">selected</c:if>>상품
						이름</option>
					<option value="product_company"
						<c:if test="${map.search_option == 'product_company'}">selected</c:if>>회사명</option>
				</select> <input name="keyword" value="${map.keyword}"
					class="h-search-bar h-text">
				<button class="h-search-button">
					<img alt="" src="${path}/images/icon/search.svg">
				</button>
			</form>


			<c:choose>
				<c:when test="${sessionScope.userid == null }">
					<ul style="text-align: right;">
						<!-- 로그인하지 않은 상태 -->
						<li><a href="${path}/member/write.do">회원가입&nbsp&nbsp&nbsp&nbsp/</a></li>
						<li><a href="${path}/member/login.do">로그인&nbsp&nbsp&nbsp&nbsp/</a></li>
						<li><a href="${path}/shop/petcart/petlist.do">장바구니</a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<!-- 로그인한 상태 -->
					<ul style="text-align: right;">
						<li><a>${sessionScope.username}님 반갑습니다.</a></li>
						<li><a href="${path}/member/logout.do">로그아웃&nbsp&nbsp&nbsp&nbsp/</a></li>
						<li><a href="${path}/shop/petcart/petlist.do">장바구니</a></li>
						<c:if test="${sessionScope.admin_userid != null }">
						<li><a href="${path}/shop/product/write.do">/&nbsp&nbsp&nbsp&nbsp물품 업로드</a></li>
						</c:if>
					</ul>
				</c:otherwise>
			</c:choose>
		</div>
		<!-- end headermenu -->
	</header>
	<!-- end main-header -->

	<div class="jumbotron">
		<div class="container text-center">
			<a href="/project/"><img src="${path}/images/Logo/Logo.png"
				width="430px" height="180px"> </a>
			<p>Best Quality & Best Service</p>
			<div class="search-bar">
				<form name="form1" method="post"
					action="${path}/shop/product/list.do">
					<select name="search_option" class="option">
						<option value="all"
							<c:if test="${map.search_option == 'all'}">selected</c:if>>전체</option>
						<option value="product_code"
							<c:if test="${map.search_option == 'product_code'}">selected</c:if>>상품
							종류</option>
						<option value="product_name"
							<c:if test="${map.search_option == 'product_name'}">selected</c:if>>상품
							이름</option>
						<option value="product_company"
							<c:if test="${map.search_option == 'product_company'}">selected</c:if>>회사명</option>
					</select> <input name="keyword" value="${map.keyword}" class="search-text">
					<button class="search-button">
						<img alt="" src="${path}/images/icon/search.svg">
					</button>
				</form>
			</div>
		</div>
		<!-- end container text-center-->
	</div>
	<!-- end  jumbotron-->

	<!-- 네비게이션 바 시작점 -->
	<nav class="navbar navbar-inverse">
		<div class="wrapper">
			<div class="menubar">
				<ul>
					<li><a href="${path}">Home</a></li>
					<li><a href="#">Best 상품</a></li>
					<li><a href="#">애견 먹거리</a>
						<ul>
							<li><a href="list_A.do">사료</a></li>
							<li><a href="list_B.do">간식</a></li>
						</ul></li>
					<li><a href="#">애견 용품</a>
						<ul>
							<li><a href="list_C.do">급수기 & 급식기</a></li>
							<li><a href="list_D.do">배변 패드</a></li>
							<li><a href="list_E.do">외출 용품</a></li>
							<li><a href="list_F.do">하우스</a></li>
						</ul></li>
					<li><a href="#">애견 Toy & 의류</a>
						<ul>
							<li><a href="list_G.do">애견 Toy</a></li>
							<li><a href="list_H.do">애견 의류</a></li>
						</ul></li>
					<li><a href="#">커뮤니티</a>
						<ul>
							<li><a href="#">공지 사항</a></li>
							<li><a href="#">상품 이용 후기</a></li>
							<li><a href="#">1 : 1 고객 센터</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<%@ include file="../include/mainheader.jsp" %>

	<div class="content-wrapper">
		<div style="width: 1200px; margin: 0 auto;">
			<h2>
				<b>검색 결과</b>
			</h2>
			<div class="selectWrapper">
			<select id="selectOption">
				<option value="${path}/shop/product/list_p.do">높은 가격순</option>
				<option value="${path}/shop/product/list_p2.do">낮은 가격순</option>
				<option value="${path}/shop/product/list_c.do">회사별</option>
				<option value="${path}/shop/product/list_n.do">이름순</option>
			</select>
			<button id="btnOption">정렬</button>
			</div>
		</div>
		<div class="list-view">
			<c:forEach var="row" items="${map.list}">
				<div class="list-view-child" style="">
					<div>
						<a href="${path}/shop/product/detail/${row.product_id}"><img
							src="${path}/images/product/${row.picture_url}"></a>
					</div>
					<div style="height: 50px;">
						<a href="${path}/shop/product/detail/${row.product_id}">
							${row.product_name}</a>
					</div>
					<div style="margin-top: 10px;">
						<fmt:formatNumber value="${row.price}" pattern="￦ #,###원" />
					</div>
				</div>
				<!-- 관리자에게만 편집 버튼 표시 -->
				<%-- 	 <c:if	test="${sessionScope.admin_userid != null }">
							
							<a href="${path}/shop/product/edit/${row.product_id}">[편집]</a>
						</c:if> --%>
			</c:forEach>
			<table>
			<tr>
				<c:if test="${map.pager.curBlock > 1}">
					<a href="#" onclick="list('1')">[처음]</a>
				</c:if>
				<c:if test="${map.pager.curBlock > 1}">
					<a href="#" onclick="list('${map.pager.prevPage}')"> [이전]</a>
				</c:if>
				<c:forEach var="num" begin="${map.pager.blockBegin}"
					end="${map.pager.blockEnd}">
					<c:choose>
						<c:when test="${num == map.pager.curPage}">
							<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
							<span style="color: red;">${num}</span>
						</c:when>
						<c:otherwise>
							<a href="#" onclick="list('${num}')">${num}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${map.pager.curBlock < map.pager.totBlock}">
					<a href="#" onclick="list('${map.pager.nextPage}')">[다음]</a>
				</c:if>
				<c:if test="${map.pager.curPage < map.pager.totPage}">
					<a href="#" onclick="list('${map.pager.totPage}')">[끝]</a>
				</c:if>
				</tr>
			</table>
		</div>

	</div>




	<div id="dhtmdvy">
		<div
			style="background: #f7f7f7; border-top: 1px solid #dfdfdf; border-bottom: 1px solid #dfdfdf; text-align: center;">
			<div class="inner-1">

				<div
					style="float: left; height: 120px; width: 220px; margin-left: 30px;">
					<h3 class="foot-h3">CS CENTER</h3>
					<!-- foot-h3 css 설정은 이 페이지에서 .foot-h3을 검색하세요 -->
					<div
						style="font-family: tahoma, sans-serif; font-size: 25px; font-weight: bold; color: #293744; letter-spacing: -1px; line-height: 50px;">02-222-2222</div>
					<div style="color: #757c82; font-size: 11px; padding-bottom: 8px">
						평일 12:00-17:00 [주말, 공휴일 휴무]<br />
					</div>
				</div>

				<div
					style="float: left; height: 120px; width: 300px; padding-left: 20px;">
					<div
						style="position: absolute; top: 20%; bottom: 20%; left: 250px; width: 1px; border-left: 1px solid #f0f0f0;"></div>
					<h3 class="foot-h3">BANK INFO</h3>
					<div
						style="font-family: tahoma, sans-serif; font-size: 25px; font-weight: bold; color: #293744; letter-spacing: -1px; line-height: 50px;">829-383384-02-003</div>
					<div style="color: #757c82; font-size: 11px; padding-bottom: 8px">
						우리은행<br /> 예금주 : 오윤성
					</div>
				</div>

				<div
					style="float: left; height: 120px; width: 260px; padding-left: 20px;">
					<div
						style="position: absolute; top: 20%; bottom: 20%; left: 550px; width: 1px; border-left: 1px solid #f0f0f0;"></div>
					<h3 class="foot-h3">
						<a href="#">NOTICE</a>
					</h3>
					<div style="margin-top: 10px;">
						<ul>
							<li style="height: 19px;"><a href="#"
								style="color: #757c82; font-size: 11px;">코로나로 인한 배송지연 웅앵웅</a></li>
						</ul>
					</div>
				</div>

				<div style="float: left; height: 120px; padding-left: 20px;">
					<div
						style="position: absolute; top: 20%; bottom: 20%; left: 810px; width: 1px; border-left: 1px solid #f0f0f0;"></div>
					<a href="https://facebook.com" class="fa fa-facebook"></a> <a
						href="https://instagram.com" class="fa fa-instagram"></a> <a
						href="https://twiter.com/explore" class="fa fa-twitter"></a>
				</div>

			</div>
		</div>
		<!-- ======================================================================== -->
		<div class="inner-2">
			<h1 style="float: left; width: 300px; text-align: center;"
				class="xans-element- xans-layout xans-layout-logobottom ">
				<a href="/project/"><img src="${path}/images/Logo/Logo.png"
					alt="Dog Project" style="width: 85%" /></a>
			</h1>
			<!-- css 수정은 /css/module/layout/footer.css에서 하세요 -->
			<div class="xans-element- xans-layout xans-layout-footer">
				<p class="address">
					<span>법인명(상호) : (주)DOG PROJECT&nbsp&nbsp&nbsp </span> <span>대표자(성명)
						: 오윤성&nbsp&nbsp&nbsp</span> <span>사업자 등록번호 : 133-88-00031</span><br>
					<span>전화 : 02-222-2222&nbsp&nbsp&nbsp</span> <span>이메일
						:&nbsp<strong><a href="mailto:dhdbstjd7@gmail.com">dhdbstjd7@gmail.com&nbsp&nbsp&nbsp</a></strong>
					</span> <span>팩스 : 02-1111-1111</span><br /> <span>주소 : 14056 경기도
						안양시 동안구 벌말로 123 (관양동) 평촌스마트베이 A동 1111호</span><br /> <span>Contact
						<strong><a href="mailto:dhtmdvy8.naver.com">dhtmdvy8@naver.com</a></strong>
						for more information.
					</span>
					<!-- </span> -->
				</p>
				<p class="copyright">
					Copyright © <strong>DOG PROJECT 공식 온라인 몰</strong>. All rights
					reserved.
				</p>
			</div>
		</div>
	</div>
	<!-- 헤더 스크롤 에니메이션 스크립트 -->
	<script type="text/javascript">
		var $window = $(window), $mainHeader = $('#main-header'), $defaultLogo = '${path}/images/Logo/Logo.png', $smallLogo = '${path}/images/Logo/Logo.png';
		$window.scroll(function() {
			if ($(this).scrollTop() > 180) {
				if (!$mainHeader.hasClass('shrink')) {
					$mainHeader.addClass('shrink');

					switchImages($smallLogo);
				}
			} else {
				if ($mainHeader.hasClass('shrink')) {
					$mainHeader.removeClass('shrink');
					$HeaderSearch.addClass('hidden');
					switchImages($defaultLogo);
				}
			}
		});
		//switchImage 함수 
		function switchImages(newPath) {
			var $logo = $('#logo');
			$mainHeader.fadeOut(10, function() {
				$logo.attr('src', newPath);
				$mainHeader.fadeIn(10);
			});
		}
		var $HeaderSearch = $('hsearchbar');
		$window.scroll(function() {
			if ($(this).scrollTop() > 300) {
				if (!$HeaderSearch.hasClass('.hidden')) {
					$HeaderSearch.addClass('hidden');

				}
			} else {
				if (!$HeaderSearch.hasClass('.hidden')) {
					$HeaderSearch.removeClass('hidden');
				}
			}
		});
		/*맨위로가기  */
		$(function() {
			$(window).scroll(function() {
				if ($(this).scrollTop() > 500) {
					$('.top').fadeIn();
				} else {
					$('.top').fadeOut();
				}
			});

			$(".top").click(function() {
				$('html, body').animate({
					scrollTop : 0
				}, 400);
				return false;
			});
		});
	</script>

	<!-- 위로가기버튼 -->
	<div>
		<a href="#" class="top"><img src="${path}/images/top.png"
			width="80px" height="80px"></a>
	</div>

</body>
</html>

