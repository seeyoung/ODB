<%@ page import="kr.odb.Odb" %>



<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'bibleContent', 'error')} ">
	<label for="bibleContent">
		<g:message code="odb.bibleContent.label" default="Bible Content" />
		
	</label>
	<g:textField name="bibleContent" value="${odbInstance?.bibleContent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'anotherBibleStatement', 'error')} ">
	<label for="anotherBibleStatement">
		<g:message code="odb.anotherBibleStatement.label" default="Another Bible Statement" />
		
	</label>
	<g:textField name="anotherBibleStatement" value="${odbInstance?.anotherBibleStatement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'anotherBibleStatement_en', 'error')} ">
	<label for="anotherBibleStatement_en">
		<g:message code="odb.anotherBibleStatement_en.label" default="Another Bible Statementen" />
		
	</label>
	<g:textField name="anotherBibleStatement_en" value="${odbInstance?.anotherBibleStatement_en}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'bibleContent_en', 'error')} ">
	<label for="bibleContent_en">
		<g:message code="odb.bibleContent_en.label" default="Bible Contenten" />
		
	</label>
	<g:textField name="bibleContent_en" value="${odbInstance?.bibleContent_en}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'biblePosition', 'error')} ">
	<label for="biblePosition">
		<g:message code="odb.biblePosition.label" default="Bible Position" />
		
	</label>
	<g:textField name="biblePosition" value="${odbInstance?.biblePosition}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'biblePosition_en', 'error')} ">
	<label for="biblePosition_en">
		<g:message code="odb.biblePosition_en.label" default="Bible Positionen" />
		
	</label>
	<g:textField name="biblePosition_en" value="${odbInstance?.biblePosition_en}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'dailyBreadContent', 'error')} ">
	<label for="dailyBreadContent">
		<g:message code="odb.dailyBreadContent.label" default="Daily Bread Content" />
		
	</label>
	<g:textField name="dailyBreadContent" value="${odbInstance?.dailyBreadContent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'dailyBreadContent_en', 'error')} ">
	<label for="dailyBreadContent_en">
		<g:message code="odb.dailyBreadContent_en.label" default="Daily Bread Contenten" />
		
	</label>
	<g:textField name="dailyBreadContent_en" value="${odbInstance?.dailyBreadContent_en}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'dailyNewTestament', 'error')} ">
	<label for="dailyNewTestament">
		<g:message code="odb.dailyNewTestament.label" default="Daily New Testament" />
		
	</label>
	<g:textField name="dailyNewTestament" value="${odbInstance?.dailyNewTestament}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'dailyNewTestament_en', 'error')} ">
	<label for="dailyNewTestament_en">
		<g:message code="odb.dailyNewTestament_en.label" default="Daily New Testamenten" />
		
	</label>
	<g:textField name="dailyNewTestament_en" value="${odbInstance?.dailyNewTestament_en}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'dailyOldTestament', 'error')} ">
	<label for="dailyOldTestament">
		<g:message code="odb.dailyOldTestament.label" default="Daily Old Testament" />
		
	</label>
	<g:textField name="dailyOldTestament" value="${odbInstance?.dailyOldTestament}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'dailyOldTestament_en', 'error')} ">
	<label for="dailyOldTestament_en">
		<g:message code="odb.dailyOldTestament_en.label" default="Daily Old Testamenten" />
		
	</label>
	<g:textField name="dailyOldTestament_en" value="${odbInstance?.dailyOldTestament_en}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'dailyStatement', 'error')} ">
	<label for="dailyStatement">
		<g:message code="odb.dailyStatement.label" default="Daily Statement" />
		
	</label>
	<g:textField name="dailyStatement" value="${odbInstance?.dailyStatement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'dailyStatement2', 'error')} ">
	<label for="dailyStatement2">
		<g:message code="odb.dailyStatement2.label" default="Daily Statement2" />
		
	</label>
	<g:textField name="dailyStatement2" value="${odbInstance?.dailyStatement2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'dailyStatement2_en', 'error')} ">
	<label for="dailyStatement2_en">
		<g:message code="odb.dailyStatement2_en.label" default="Daily Statement2en" />
		
	</label>
	<g:textField name="dailyStatement2_en" value="${odbInstance?.dailyStatement2_en}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'dailyStatement_en', 'error')} ">
	<label for="dailyStatement_en">
		<g:message code="odb.dailyStatement_en.label" default="Daily Statementen" />
		
	</label>
	<g:textField name="dailyStatement_en" value="${odbInstance?.dailyStatement_en}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="odb.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${odbInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'englishVoiceUrl', 'error')} ">
	<label for="englishVoiceUrl">
		<g:message code="odb.englishVoiceUrl.label" default="English Voice Url" />
		
	</label>
	<g:textField name="englishVoiceUrl" value="${odbInstance?.englishVoiceUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'songNumber', 'error')} ">
	<label for="songNumber">
		<g:message code="odb.songNumber.label" default="Song Number" />
		
	</label>
	<g:textField name="songNumber" value="${odbInstance?.songNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'songNumber_en', 'error')} ">
	<label for="songNumber_en">
		<g:message code="odb.songNumber_en.label" default="Song Numberen" />
		
	</label>
	<g:textField name="songNumber_en" value="${odbInstance?.songNumber_en}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="odb.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${odbInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: odbInstance, field: 'title_en', 'error')} ">
	<label for="title_en">
		<g:message code="odb.title_en.label" default="Titleen" />
		
	</label>
	<g:textField name="title_en" value="${odbInstance?.title_en}"/>
</div>

