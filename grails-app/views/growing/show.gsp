
<%@ page import="kr.odb.Growing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'growing.label', default: 'Growing')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-growing" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-growing" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list growing">
			
				<g:if test="${growingInstance?.pdfUrl}">
				<li class="fieldcontain">
					<span id="pdfUrl-label" class="property-label"><g:message code="growing.pdfUrl.label" default="Pdf Url" /></span>
					
						<span class="property-value" aria-labelledby="pdfUrl-label"><g:fieldValue bean="${growingInstance}" field="pdfUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${growingInstance?.series}">
				<li class="fieldcontain">
					<span id="series-label" class="property-label"><g:message code="growing.series.label" default="Seriase" /></span>
					
						<span class="property-value" aria-labelledby="series-label"><g:fieldValue bean="${growingInstance}" field="series"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${growingInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="growing.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${growingInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:growingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${growingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
