<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="hello">
<g:set var="entityName"
	value="${message(code: 'mainPage.label', default: 'MainPage')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
<style type="text/css">
p {
	text-indent: 1em;
}

strong {
	color: #2373a5;
	font-weight: normal;
}

#hello2 span {
	text-align: right;
}

.ui-li-desc {
	white-space: normal;
}

.ui-listview li img {
	border:0px;
}

.ui-listview li div {
	margin-top: 6px;
}

div p span {
	color: #2373a5;
	display: block;
}

div p {
	white-space: normal;
	text-indent: 0;
	word-wrap: break-word;
	
}
</style>
</head>
<body>
	<section id="main-content" style="margin-bottom:50px;">
		<div id="guts">
		<h3 >&nbsp;&nbsp;정기 간행물, 서비스 안내 </h3>
			<ul data-role="listview" data-inset="true">
				<li data-role="list-divider">정기 간행물 </li>
				<li>
					<div class="ui-grid-a">
					    <div class="ui-block-a" style="text-align:center;">
					    	<h5>소책자&nbsp;&nbsp;</h5>
							<img src="http://odb.or.kr/ministry/images/pub_img01.gif" />
							<div>매월 발행 </div>
						</div>
					    <div class="ui-block-b" style="text-align:center;">
					    	<h5>큰 글씨본&nbsp;&nbsp;</h5>
							<img src="http://odb.or.kr/ministry/images/pub_img02.gif" />
							<div>매월 발행 </div>
						</div>
					</div>
					<div class="ui-grid-a">
					    <div class="ui-block-a" style="text-align:center;">
					    	<h5>점자본&nbsp;&nbsp;</h5>
							<img src="http://odb.or.kr/ministry/images/pub_img03.gif" />
							<div>년 4회 발행 </div>
						</div>
					    <div class="ui-block-b" style="text-align:center;">
					    	<h5>신앙성장시리즈&nbsp;&nbsp;</h5>
							<img src="http://odb.or.kr/ministry/images/pub_img04.gif" />
							<div>년 2회 발행 </div>
						</div>
					</div><!-- /grid-b -->				
				</li>
				<li data-role="list-divider">서비스 </li>
				<li>
					<h4>이메일 서비스</h4>					<div style="word-wrap: break-word;white-space:normal">
오늘의 양식 홈페이지에 회원 가입하면서 이메일 서비스를 신청하시면 
매일 아침 오늘의 양식을 받아 볼 수 있고, 
다른 분의 이메일 주소를 추천해 주시면 다른 분에게도 
이메일로 오늘의 양식을 보낼 수 있습니다.

					</div><br>
					<h4>음성 서비스</h4>					<div style="white-space:normal">
한국시각장애인전자도서관에서 운영하는 종달새 서비스에 연결된 
오늘의 양식 우리말 음성서비스를 이용하실 수 있습니다. <br>전화 : 060-704-5500, 02-2022-4800 에 접속하시면 
본문을 들으실 수 있습니다.

					</div>
				
				</li>
			</ul>
		</div>
	</section>
	<script type="text/javascript">
		$(function() {
			$("press_2").addClass("ui-btn-active");
		});
	</script>
</body>
</html>