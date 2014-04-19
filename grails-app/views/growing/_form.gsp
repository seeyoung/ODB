<%@ page import="kr.odb.Growing" %>



<div class="fieldcontain ${hasErrors(bean: growingInstance, field: 'pdfUrl', 'error')} ">
	<label for="pdfUrl">
		<g:message code="growing.pdfUrl.label" default="Pdf Url" />
		
	</label>
	<g:textField name="pdfUrl" value="${growingInstance?.pdfUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: growingInstance, field: 'series', 'error')} required">
	<label for="series">
		<g:message code="growing.series.label" default="Seriase" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="series" type="number" value="${growingInstance.series}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: growingInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="growing.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${growingInstance?.title}"/>
</div>

