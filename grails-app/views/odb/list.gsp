<%@ page import="kr.odb.odb.MainPage" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set scope="request" var="pageTitle" value="오늘의 양식 목록" />
		<meta name="layout" content="main1">
		<style type="text/css">
		.ui-content {
			margin-bottom: 36px;
		}
		</style>
		
</head>
<body>
<div data-role="content">
<div data-role="fieldcontain">
<g:form name="myForm" action="list">
<fieldset data-role="controlgroup" data-type="horizontal">
<%--	<legend>2013/06월호</legend>--%>
	<label for="year">Year</label>
	<g:select name="year" from="${yearList}"  value="${params.year}" onchange="this.form.submit()"/>
   <label for="month">Month</label>
	<g:select name="month" from="${monthList}"  value="${params.month}" onchange="this.form.submit()"/>
 </fieldset>
 </g:form>
</div>

    <ul data-role="listview" >
	<li data-role="list-divider">${params.year+"년 "+params.month+"월"}</li>
		<g:each in="${odbInstanceList}" status="i" var="odbInstance">
		      <li>
		      <g:link action="show" params="[date:(odbInstance.date).format("yyyyMMdd")]" data-ajax="false">
		      	<headgroup class="headgroup">
		      		<h2 class="headDate">${odbInstance.date.format('dd')}</h2>
		      		<h2>${odbInstance.date.format('EEE')}</h2>
		      	</headgroup>
		      	<h3 data-role="li-heading">${session.lang!='en'?odbInstance.title:odbInstance.title_en}</h3>
		      	<p>${session.lang!='en'?odbInstance.biblePosition:odbInstance.biblePosition_en}</p>
		      </g:link>
		      </li>
	</g:each>
  </div>
<g:render template="footer"/>

<script type="text/javascript">
$(function() {      
$('select').selectmenu();
})
</script>
</body>
</html>