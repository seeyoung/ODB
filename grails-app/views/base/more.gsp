<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main1" />
<title>더보기</title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'more.css')}" type="text/css">				
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'page1.css')}"  type="text/css">
<g:set scope="request" var="pageTitle" value="더보기 " />
</head>
<body>	
			<ul id="menus" class="material">
				<li>
					<div>
						<a href="http://m.facebook.com/odbkorea" data-ajax="false"><img
							src="${resource(dir:'images',file:'fbook.png')}" alt="페이스북" />
							<h6>FaceBook</h6></a>
					</div>
				</li>
				<li>
					<div>
						<a href="#" onClick="javascript:Android.toDeveloper()" data-ajax="false"><img
							src="${resource(dir:'images',file:'mail.png')}" alt="제작자에게" />
							<h6>제작자에게</h6></a>
					</div>
				</li>
				<li>
					<div >
						<g:link uri="/help" data-ajax="false">
							<img src="${resource(dir:'images',file:'help.png')}"
								"img/help.png" alt="도움말" />
							<h6>도움말</h6>
						</g:link>
					</div>
				</li>
				<li>
					<div class="border_right_none">
						<a href="#" onClick="javascript:Android.kakaotalk()" data-ajax="false"> 
						<img src="${resource(dir: 'images', file: 'share.png')}"
							alt="추천하기" />
							<h6>추천하기</h6></a>
					</div>
				</li>

			</ul>
		<g:render template="more-footer"></g:render></body>
</html>