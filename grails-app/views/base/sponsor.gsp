<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main1">
<g:set var="entityName"
	value="${message(code: 'mainPage.label', default: 'MainPage')}" />
	
<g:set scope="request" var="pageTitle" value="후원" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
<style type="text/css">
.material {
	margin-bottom: 30px;
}

div.material {
	margin-top: 10px;
	padding: 10px;
}

p {
	margin: 0 1em 1em 1em;
}
h3 {
	margin: 1em 1em 0.2em 0;
}

#hello2 span {
	text-align: right;
}
</style>
</head>
<body>
	<section id="main-content">
		<div id="guts">
			<div class="material">
				<div id="hello_1">
					<h3>후원 </h3>
					<p>오늘의 양식은 기도와 후원, 사역 동참의 방법으로 후원하실 수 있습니다. 자세한 사항은 홈페이지 (odb.or.kr) 를 참조해 주시기 바랍니다.</p>
					<h3>핸드폰 소액결제 </h3>
					<p>핸드폰 소액결제는 휴대폰의 사용 요금에 추가하여 후원금을 납부하는 방법입니다</p>
					<h3>미국 벧엘출판사 후원 </h3>
					<p>벧엘출판사는 미국에서 오늘의 양식 한/영판을 출판하고 있습니다.<br>
					미국과 캐나다에 계신 독자들께서는 후원금(Check) 을 아래 주소로 보내주시면 미국과 전세계를 대상으로 한 문서선교에 소중하게 사용됩니다.</p>
					<p>
						(보내실 주소)<br>
						Bethel Press <br>
						PO BOX 1853<br>
						Ellicott City, MD 21041-1853<br>
					</p>
				</div>
			</div>
		</div>
	</section>
		<div data-role="footer" data-position="fixed" data-fullscreen="true" 
		data-tap-toggle="false" data-theme="b">
		<div data-role="navbar" >
			<ul>
				<li><g:link uri="/odb/show" data-ajax="false" data-icon="grid"  >오늘의 양식</g:link></li>				
				<li><g:link url="https://www.youtube.com/user/odbkorea" data-ajax="false" data-icon="video"  >VOD</g:link></li>
				<li><g:link uri="/growing/list" data-ajax="false" data-icon="plus">신앙성장</g:link></li>
				<li><g:link uri="/more" data-ajax="false" data-icon="bars">더보기</g:link></li>
			</ul>
		</div>
	</div>
	
</body>
</html>