<%@ page import="kr.odb.Odb" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://rawgithub.com/arschmitz/jquery-mobile-datepicker-wrapper/master/jquery.mobile.datepicker.css" />
	<script src="http://view.jqueryui.com/master/ui/jquery.ui.datepicker.js"></script>
     <script id="mobile-datepicker" src="https://rawgithub.com/arschmitz/jquery-mobile-datepicker-wrapper/master/jquery.mobile.datepicker.js"></script>
<g:set scope="request" var="pageTitle" value="오늘의 양식" />

<meta name="layout" content="main1">

<style type="text/css">
.ui-content {
	margin-bottom: 36px;
}

article {
	padding: 0 10px 7px;
}

.ui-controlgroup.ui-mini {
	text-align: right;
	padding: 10px 10px 0px 0;
	position: relative;
}

#songSub_1,#songSub_2 {
	text-align: center;
	padding: 10px;
	background: #ccc;
	margin-top: 0px;
}

.arrow-up {
	width: 0;
	height: 0;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-bottom: 5px solid #ccc;
}

.ui-controlgroup.ui-mini {
	
}

.abs-centered {
  margin: auto;
  bottom: 0;
  left: 0;
  top: 0;
  right: 0;
}
</style>

<script>
function selectedDate(String dateText, Object inst){
	alert(dateText);
	}
</script>
</head>

<body>
	<div data-role="content">
		<div style="text-align:center;">
			<g:link action="show" params="[date:(odbInstance.date -1).format("yyyyMMdd")]" 
				data-role="button" data-icon="arrow-l" data-inline="true" data-ajax="false" >이전</g:link>
		    <g:link action="list" params="[year:odbInstance.date.format("yyyy"), month:odbInstance.date.format("MM") ]"  
		    	data-role="button" data-icon="bullets" data-inline="true" data-ajax="false">${odbInstance.date.format('MM/dd ')}</g:link> 
		    <g:link action="show" params="[date:(odbInstance.date +1).format("yyyyMMdd")]" 
		    		class="ui-btn-icon-right"
					data-role="button" data-icon="arrow-r" data-icon-position="right" data-inline="true" data-ajax="false" >다음</g:link>	
		</div>
		<div class="material">
			<ul id="tab_container">
				<li id="tab_1" class="${session.lang !='en'?'current_tab':'' }">
					<g:remoteLink action="changeLang" id='1'><h2>한글</h2></g:remoteLink>
				</li>
				<li id="tab_2" class="${session.lang =='en'?'current_tab':'' }">
					<g:remoteLink action="changeLang" id='2'><h2>영문</h2></g:remoteLink>
				</li>
			</ul>
			<div id="content_container" >
				<div id="content_1" class="${session.lang !='en'?'current_tab':'' }">
					<div data-role="controlgroup" data-mini="true"
											data-type="horizontal">					
						<a href="#bibleContent"
							data-role="button">성경보기</a> <span class="arrow-up"></span>
					</div>
					<article>
						<h2 style="display:inline">${odbInstance.title }</h2>
						<h4 style="display:block;float:right; color:#a0a0a0;top:0px;margin:7px" >${odbInstance.songNumber }</h4>
							<p style="display:block; clear:right ">
								<strong>${odbInstance.anotherBibleStatement }</strong>
							</p>
	
							<p>${odbInstance.dailyBreadContent }</p>
						<div style="width:100%; text-align:center;">
						<p></p>
							<p style="text-align:center;margin:0 15% 0 15%;color:#3968A8;" >
								${odbInstance.dailyStatement }
							</p>	<p></p>
							<div style="border-bottom: 1px solid #DDDDDD;width:100%;height:2px"></div>
								<p></p>
							<p style="text-align:center;margin:0 10% 0 10%;">
								${odbInstance.dailyStatement2 }
							</p>
						</div>
					</article>
						<div style="width:70%" data-role="panel" id="bibleContent" data-position="right" data-display="overlay" data-theme="a">
					
					        <h3>${odbInstance.biblePosition }</h3>
					        <p>${odbInstance.bibleContent }</p>
					        <a href="#demo-links" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left ui-btn-inline">성경 닫기</a>
					
						</div><!-- /rightpanel3 -->
				</div>
				<div id="content_2" class="${session.lang =='en'?'current_tab':'' }">
					<div data-role="controlgroup" data-mini="true"
						data-type="horizontal">
						<a data-role="button" id="song_2" href="#">말씀듣기</a> 
						<a href="#bibleContent_en"
							data-role="button">성경보기</a> 
						<a href="http://m.endic.naver.com"
							data-role="button">영어사전</a> 
						<span class="arrow-up"></span>
						<span class="arrow-up"></span>
					</div>
					<div id="songSub_2">
						<audio controls="controls" name="media" type="audio/mpeg"
							preload="none"
							src="${odbInstance.englishVoiceUrl }"
							id="audio_2"> 이 브라우저는 html5를 지원하지 않으므로 미디어를 들으실 수 없습니다.
						</audio>
					</div>
					<article>
						<h2 style="display:inline">${odbInstance.title_en }</h2>
							<p style="display:block; clear:right ">
								<strong>${odbInstance.anotherBibleStatement_en }</strong>
							</p>
	
							<p>${odbInstance.dailyBreadContent_en }</p>
						<div style="width:100%; text-align:center;">
						<p></p>
							<p style="text-align:center;margin:0 15% 0 15%;color:#3968A8;" >
								${odbInstance.dailyStatement_en }
							</p>	<p></p>
							<div style="border-bottom: 1px solid #DDDDDD;width:100%;height:2px"></div>
								<p></p>
							<p style="text-align:center;margin:0 10% 0 10%;">
								${odbInstance.dailyStatement2_en }
							</p>
						</div>
					</article>
						<div style="width:70%" data-role="panel" id="bibleContent_en" data-position="right" data-display="overlay" data-theme="a">
					
					        <h3>${odbInstance.biblePosition_en }</h3>
					        <p>${odbInstance.bibleContent_en }</p>
					        <a href="#demo-links" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left ui-btn-inline">성경 닫기</a>
					
						</div><!-- /rightpanel3 -->
	<%--
						<div style="width:100%;height:100%"" data-role="panel" id="naverDictionary" data-position="right" data-display="overlay" data-theme="a">
					
								<div style="margin: 0 auto; width:100%; height:846px;boder:1px">
								    <object type="text/html" data="http://m.endic.naver.com"
								            style="width:100%; height:100%; margin:1%;">
								    </object>
								</div>
					        <a href="#demo-links" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left ui-btn-inline">사전 닫기</a>
					
						</div><!-- /rightpanel3 -->
			--%>
				</div>
			</div>
		</div>
	</div>
	<g:render template="footer"/>
</body>

</html>
