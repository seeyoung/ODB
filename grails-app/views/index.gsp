<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<g:set scope="request" var="pageTitle" value="Home" />

<meta name="layout" content="home" />
<style>
html,body,div,li,img,h4,ul,a {
	background-color: #69afe6
}

.ui-overlay-a,.ui-page-theme-a,.ui-page-theme-a,.ui-panel-wrapper {
	background-color: #69afe6;
}

h1,h2,h3,h4,h5,h6 {
	color: white;
	font-weight: normal;
	margin: 0 0 20px 0;
}

.ui-grid-b img {
	width: 80px;
	margin: 5px;
}

a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}
</style>
<title>오늘의 양식</title>
</head>
<body>
	<div data-role="content" id="container"
		style="text-align: center; margin-top: 40px">
		<h2 style="width: 100%; height: 30px; margin: 0px; padding: 0px">
			오늘의 양식</h2>
		<h5
			style="border: 1px solid c3c3c3; width: 100%; height: 10px; margin: 0 0 30px 0; padding: 0px">Our
			Daily Bread</h5>

		<div style="width: 100%; height: 1px; background-color: gray"></div>
		<br> <br>
		<div class=ui-grid-b>

			<div class=ui-block-a>
				<g:link uri="/odb/show" data-ajax="false">
					<img
						src="${resource(dir: 'images/odb-icon', file: 'intro_icon_03.png')}"
						alt="오늘의 양식" />
					<h4 style="color: white">오늘의 양식</h4>
				</g:link>
			</div>

			<div class=ui-block-b>
				<a href="#" onClick="javascript:Android.goYoutube()" data-ajax="false">
					<img
					src="${resource(dir: 'images/odb-icon', file: 'intro_icon_05.png')}"
					alt="오늘의 양식" />
					<h4>VOD</h4>
				</a>
			</div>

			<div class=ui-block-c>

				<g:link uri="/growing/list" data-ajax="false">
					<img
						src="${resource(dir: 'images/odb-icon', file: 'intro_icon_07.png')}"
						alt="오늘의 양식" />
					<h4>신앙 성장</h4>
				</g:link>

			</div>
			<br>
			<div class=ui-block-a>

				<g:link uri="/sponsor" data-ajax="false">
					<img
						src="${resource(dir: 'images/odb-icon', file: 'intro_icon_12.png')}"
						alt="오늘의 양식" />
					<h4>후원</h4>
				</g:link>

			</div>

			<div class=ui-block-b>

				<a href="${createLink(uri: '/about')}" data-ajax="false"> <img
					src="${resource(dir: 'images/odb-icon', file: 'intro_icon_13.png')}"
					alt="오늘의 양식" />
					<h4>ODB 사역</h4></a>

			</div>

			<div class=ui-block-c>

				<a href="#" onClick="javascript:Android.kakaotalk()"
					data-ajax="false"> <img
					src="${resource(dir: 'images/odb-icon', file: 'intro_icon_14.png')}"
					alt="오늘의 양식" />
					<h4>추천하기</h4></a>

			</div>

		</div>
	</div>
	<div style="margin: 20px 0 0 0; text-align: center">
		<h5>www.odb.or.kr</h5>
	</div>
</body>
</html>