
<%@ page import="kr.odb.Odb" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'odb.label', default: 'Odb')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-odb" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-odb" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="bibleContent" title="${message(code: 'odb.bibleContent.label', default: 'Bible Content')}" />
					
						<g:sortableColumn property="anotherBibleStatement" title="${message(code: 'odb.anotherBibleStatement.label', default: 'Another Bible Statement')}" />
					
						<g:sortableColumn property="anotherBibleStatement_en" title="${message(code: 'odb.anotherBibleStatement_en.label', default: 'Another Bible Statementen')}" />
					
						<g:sortableColumn property="bibleContent_en" title="${message(code: 'odb.bibleContent_en.label', default: 'Bible Contenten')}" />
					
						<g:sortableColumn property="biblePosition" title="${message(code: 'odb.biblePosition.label', default: 'Bible Position')}" />
					
						<g:sortableColumn property="biblePosition_en" title="${message(code: 'odb.biblePosition_en.label', default: 'Bible Positionen')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${odbInstanceList}" status="i" var="odbInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${odbInstance.id}">${fieldValue(bean: odbInstance, field: "bibleContent")}</g:link></td>
					
						<td>${fieldValue(bean: odbInstance, field: "anotherBibleStatement")}</td>
					
						<td>${fieldValue(bean: odbInstance, field: "anotherBibleStatement_en")}</td>
					
						<td>${fieldValue(bean: odbInstance, field: "bibleContent_en")}</td>
					
						<td>${fieldValue(bean: odbInstance, field: "biblePosition")}</td>
					
						<td>${fieldValue(bean: odbInstance, field: "biblePosition_en")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${odbInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
