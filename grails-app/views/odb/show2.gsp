
<%@ page import="kr.odb.Odb" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'odb.label', default: 'Odb')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-odb" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-odb" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list odb">
			
				<g:if test="${odbInstance?.bibleContent}">
				<li class="fieldcontain">
					<span id="bibleContent-label" class="property-label"><g:message code="odb.bibleContent.label" default="Bible Content" /></span>
					
						<span class="property-value" aria-labelledby="bibleContent-label"><g:fieldValue bean="${odbInstance}" field="bibleContent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.anotherBibleStatement}">
				<li class="fieldcontain">
					<span id="anotherBibleStatement-label" class="property-label"><g:message code="odb.anotherBibleStatement.label" default="Another Bible Statement" /></span>
					
						<span class="property-value" aria-labelledby="anotherBibleStatement-label"><g:fieldValue bean="${odbInstance}" field="anotherBibleStatement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.anotherBibleStatement_en}">
				<li class="fieldcontain">
					<span id="anotherBibleStatement_en-label" class="property-label"><g:message code="odb.anotherBibleStatement_en.label" default="Another Bible Statementen" /></span>
					
						<span class="property-value" aria-labelledby="anotherBibleStatement_en-label"><g:fieldValue bean="${odbInstance}" field="anotherBibleStatement_en"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.bibleContent_en}">
				<li class="fieldcontain">
					<span id="bibleContent_en-label" class="property-label"><g:message code="odb.bibleContent_en.label" default="Bible Contenten" /></span>
					
						<span class="property-value" aria-labelledby="bibleContent_en-label"><g:fieldValue bean="${odbInstance}" field="bibleContent_en"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.biblePosition}">
				<li class="fieldcontain">
					<span id="biblePosition-label" class="property-label"><g:message code="odb.biblePosition.label" default="Bible Position" /></span>
					
						<span class="property-value" aria-labelledby="biblePosition-label"><g:fieldValue bean="${odbInstance}" field="biblePosition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.biblePosition_en}">
				<li class="fieldcontain">
					<span id="biblePosition_en-label" class="property-label"><g:message code="odb.biblePosition_en.label" default="Bible Positionen" /></span>
					
						<span class="property-value" aria-labelledby="biblePosition_en-label"><g:fieldValue bean="${odbInstance}" field="biblePosition_en"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.dailyBreadContent}">
				<li class="fieldcontain">
					<span id="dailyBreadContent-label" class="property-label"><g:message code="odb.dailyBreadContent.label" default="Daily Bread Content" /></span>
					
						<span class="property-value" aria-labelledby="dailyBreadContent-label"><g:fieldValue bean="${odbInstance}" field="dailyBreadContent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.dailyBreadContent_en}">
				<li class="fieldcontain">
					<span id="dailyBreadContent_en-label" class="property-label"><g:message code="odb.dailyBreadContent_en.label" default="Daily Bread Contenten" /></span>
					
						<span class="property-value" aria-labelledby="dailyBreadContent_en-label"><g:fieldValue bean="${odbInstance}" field="dailyBreadContent_en"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.dailyNewTestament}">
				<li class="fieldcontain">
					<span id="dailyNewTestament-label" class="property-label"><g:message code="odb.dailyNewTestament.label" default="Daily New Testament" /></span>
					
						<span class="property-value" aria-labelledby="dailyNewTestament-label"><g:fieldValue bean="${odbInstance}" field="dailyNewTestament"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.dailyNewTestament_en}">
				<li class="fieldcontain">
					<span id="dailyNewTestament_en-label" class="property-label"><g:message code="odb.dailyNewTestament_en.label" default="Daily New Testamenten" /></span>
					
						<span class="property-value" aria-labelledby="dailyNewTestament_en-label"><g:fieldValue bean="${odbInstance}" field="dailyNewTestament_en"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.dailyOldTestament}">
				<li class="fieldcontain">
					<span id="dailyOldTestament-label" class="property-label"><g:message code="odb.dailyOldTestament.label" default="Daily Old Testament" /></span>
					
						<span class="property-value" aria-labelledby="dailyOldTestament-label"><g:fieldValue bean="${odbInstance}" field="dailyOldTestament"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.dailyOldTestament_en}">
				<li class="fieldcontain">
					<span id="dailyOldTestament_en-label" class="property-label"><g:message code="odb.dailyOldTestament_en.label" default="Daily Old Testamenten" /></span>
					
						<span class="property-value" aria-labelledby="dailyOldTestament_en-label"><g:fieldValue bean="${odbInstance}" field="dailyOldTestament_en"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.dailyStatement}">
				<li class="fieldcontain">
					<span id="dailyStatement-label" class="property-label"><g:message code="odb.dailyStatement.label" default="Daily Statement" /></span>
					
						<span class="property-value" aria-labelledby="dailyStatement-label"><g:fieldValue bean="${odbInstance}" field="dailyStatement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.dailyStatement2}">
				<li class="fieldcontain">
					<span id="dailyStatement2-label" class="property-label"><g:message code="odb.dailyStatement2.label" default="Daily Statement2" /></span>
					
						<span class="property-value" aria-labelledby="dailyStatement2-label"><g:fieldValue bean="${odbInstance}" field="dailyStatement2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.dailyStatement2_en}">
				<li class="fieldcontain">
					<span id="dailyStatement2_en-label" class="property-label"><g:message code="odb.dailyStatement2_en.label" default="Daily Statement2en" /></span>
					
						<span class="property-value" aria-labelledby="dailyStatement2_en-label"><g:fieldValue bean="${odbInstance}" field="dailyStatement2_en"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.dailyStatement_en}">
				<li class="fieldcontain">
					<span id="dailyStatement_en-label" class="property-label"><g:message code="odb.dailyStatement_en.label" default="Daily Statementen" /></span>
					
						<span class="property-value" aria-labelledby="dailyStatement_en-label"><g:fieldValue bean="${odbInstance}" field="dailyStatement_en"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="odb.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${odbInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.englishVoiceUrl}">
				<li class="fieldcontain">
					<span id="englishVoiceUrl-label" class="property-label"><g:message code="odb.englishVoiceUrl.label" default="English Voice Url" /></span>
					
						<span class="property-value" aria-labelledby="englishVoiceUrl-label"><g:fieldValue bean="${odbInstance}" field="englishVoiceUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.songNumber}">
				<li class="fieldcontain">
					<span id="songNumber-label" class="property-label"><g:message code="odb.songNumber.label" default="Song Number" /></span>
					
						<span class="property-value" aria-labelledby="songNumber-label"><g:fieldValue bean="${odbInstance}" field="songNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="odb.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${odbInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${odbInstance?.title_en}">
				<li class="fieldcontain">
					<span id="title_en-label" class="property-label"><g:message code="odb.title_en.label" default="Titleen" /></span>
					
						<span class="property-value" aria-labelledby="title_en-label"><g:fieldValue bean="${odbInstance}" field="title_en"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:odbInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${odbInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
