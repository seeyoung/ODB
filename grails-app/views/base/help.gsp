<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main1">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">

<link rel="stylesheet" href="${resource(dir: 'css', file: 'layout01.css')}"
	type="text/css">

<g:set var="entityName"
	value="${message(code: 'mainPage.label', default: 'MainPage')}" />

<g:set scope="request" var="pageTitle" value="도움말" />
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
	<div id="content" style="margin-bottom:50px">
		<h3>앱설명</h3>
		<div id="version_feature">
			<ul>			
				<li>			오늘의 양식 앱은 www.odb.or.kr 의 컨텐츠를 보다 편리하게 활용할 수 있도록 만들어진 앱입니다.<br>
메뉴는 오늘의 양식 본문보기, VOD 보기. 신앙성장 시리즈 다운 받아보기, 후원하기 등이며 특히, 성경본문보기, 영어단어찾기, 영어음성듣기 등의 기능을 손쉽게 이용할 수 있게 구성했습니다. 
</li>
			</ul>
		</div>
		<!--end of version_feature-->
		<h3>탭메뉴 기능상세</h3>
		<div class="menu_feature">
			<ul>
				<li>
					<dl>
						<dt>오늘의 양식</dt>
						<dd>
							매일 매일의 오늘의 양식 본문 내용을 담고 있습니다. 한글/영문본문 보기, 월별 검색, 성경구절보기, 영어음성듣기, 영어단어찾기 등의 기능을 제공합니다.   <br>
						</dd>
						<dt>VOD</dt>
						<dd>한국 오늘의 양식 발행인 김상복 목사님이 진행하시는 동영상 (CTS에서 매일 방송 중) 을 볼 수 있습니다.</dd>
						<dt>신앙성장</dt>
						<dd>매년 2회 발행되는 신앙성장 시리즈를 PDF 파일 형태로 다운 받아서 앱에서 볼 수 있습니다.</dd>
						<dt>후원</dt>
						<dd>한국 오늘의 양식과 미국 벧엘 출판사에 후원할 수 있는 방법을 안내해 드립니다.</dd>
					</dl>
				</li>
			</ul>
		</div>
		<h3>추천하기</h3>
		<div class="menu_feature">
추천하기는 오늘의 양식 앱을 카카오톡을 통해 다른 사람들이 받아볼 수 있도록 안내하는 기능입니다.
		</div>
		<h3>앱서비스범위</h3>
		<div class="menu_feature">
한국 오늘의 양식 국내 첫 출판은 1990년 7월이지만, 앱을 통하여 보실 수 있는 오늘의 양식은  2010년부터이고 추후 서비스 대상을 확대하겠습니다. 신앙성장 시리즈는 1호부터 최신호까지 제공합니다. (PDF 가 없는 호수는 PDF 작업후 올려드리겠습니다.)
		</div>
		<h3>성경과 찬송</h3>
		<div class="menu_feature">
한국 오늘의 양식에서 사용하는 성경은 개역개정판(한글), NKJV(영어)이고, 찬송가는 새찬송가의 장을 인용합니다. 
		</div>
		<g:render template="more-footer"></g:render>
</body>
</html>