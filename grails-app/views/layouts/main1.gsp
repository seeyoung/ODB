<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>
	${pageTitle }
</title>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'page1.css')}"
	type="text/css">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.0/jquery.mobile-1.4.0.min.css" />
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.0/jquery.mobile-1.4.0.min.js"></script>
<script type="text/javascript"
	src="${resource(dir: 'js', file: 'tab.js')}"></script>
<style type="text/css">
.ui-header .ui-btn {
	position: absolute;
	top: 50%;
	right: 10px;
	margin-top: -17px;
}

.ui-field-contain {
	border: none;
	margin: 0
}

.ui-field-contain .ui-controlgroup,.ui-field-contain fieldset.ui-controlgroup
	{
	text-align: center;
	margin: 5px;
}

.ui-field-contain .ui-controlgroup-label {
	vertical-align: middle;
	float: left;
	margin-top: 10px;
	font-size: 14px;
}

.ui-content .ui-listview {
	margin: 0;
}

headgroup.headgroup {
	float: left;
	margin-right: 13px;
}

headgroup.headgroup h2 {
	text-align: center;
	margin-right: 7px;
	color: #7F7F7F;
}

headgroup.headgroup h2.ui-li-heading {
	font-size: 12px;
	margin: 0
}

headgroup.headgroup h2.ui-li-heading:first-child {
	font-size: 33px;
	font-family: Arial, Verdana, sans-serif;
	font-weight: bold;
	margin-bottom: 0px;
	margin-top: 0;
}

.ui-li-desc { 10px;
	
}

.ui-listview li a p.list-title {
	font-size: 16px;
	margin-top: 8px;
}

.ui-listview li a span.mrkim {
	margin-left: 10px;
}

.ui-field-contain .ui-controlgroup-controls {
	width: auto;
}
</style>

<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<div data-role="page" id="page1">

		<div data-role="header" id="header" data-theme="b">
			<g:if test="${request.servletPath != '/index.gsp' }">
			<a href="${createLink(uri: '/')}"
				class="ui-btn-left ui-btn-corner-all ui-btn ui-icon-home ui-btn-icon-notext ui-shadow"
				data-form="ui-icon" title=" Home " data-role="button" role="button" data-ajax="false">
				Home </a>
			</g:if>
			<h1>
				${pageTitle }
			</h1>
		</div>
		<div style="margin:0 -3px 23px -5px">
		<g:layoutBody />
		</div>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display: none;">
			<g:message code="spinner.alt" default="Loading&hellip;" />
		</div>
		<g:javascript library="application" />
		<r:layoutResources />
	</div>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-49958742-1', 'odb.or.kr');
  ga('send', 'pageview');

</script>
</body>
</html>
