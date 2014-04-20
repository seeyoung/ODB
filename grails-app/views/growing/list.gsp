<!DOCTYPE html>
<html>
	<head>
		<g:set scope="request" var="pageTitle" value="신앙성장 시리즈" />
		<meta name="layout" content="main1">
</head>
<body>
<div data-role="content">

    <ul data-role="listview"  data-inset="true" >
		<g:each in="${growingInstanceList}" status="i" var="growingInstance">
		      <li>
		      	<headgroup class="headgroup">
		      		<h2 class="headDate">${growingInstance.series}</h2>
		      	</headgroup>
		      	<h3 data-role="li-heading">${growingInstance.title}
		      	<g:if test="${growingInstance.pdfUrl }">
		      		<br>
		      		<a href="${growingInstance.pdfUrl }" ><img src="http://odb.or.kr/odb/images/btn_pdf.gif" /></a>
		      	</g:if>
		      	</h3>
		      </li>
	</g:each>
  </div>
  	<div data-role="footer" data-position="fixed" data-fullscreen="true" 
		data-tap-toggle="false" data-theme="b">
		<div data-role="navbar" >
			<ul>
				<li><g:link uri="/odb/show"" data-ajax="false" data-icon="grid"  >오늘의 양식</g:link></li>
				<li><g:link url="https://www.youtube.com/user/odbkorea" data-ajax="false" data-icon="video"  >VOD</g:link></li>
				<li><g:link uri="/sponsor" data-ajax="false" data-icon='heart'>후원</g:link></li>
				<li><g:link uri="/more" data-ajax="false" data-icon="bars">더보기</g:link></li>
			</ul>
		</div>
	</div>
 
<script type="text/javascript">
$(function() {      
$('select').selectmenu();
})
</script>
</body>
</html>