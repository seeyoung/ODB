
<%@ page import="kr.odb.Growing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'growing.label', default: 'Growing')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-growing" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-growing" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="pdfUrl" title="${message(code: 'growing.pdfUrl.label', default: 'Pdf Url')}" />
					
						<g:sortableColumn property="series" title="${message(code: 'growing.series.label', default: 'Seriase')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'growing.title.label', default: 'Title')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${growingInstanceList}" status="i" var="growingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${growingInstance.id}">${fieldValue(bean: growingInstance, field: "pdfUrl")}</g:link></td>
					
						<td>${fieldValue(bean: growingInstance, field: "series")}</td>
					
						<td>${fieldValue(bean: growingInstance, field: "title")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${growingInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
