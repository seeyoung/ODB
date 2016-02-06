package kr.odb

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*

class OdbDataGetterService {

	Date startDate = Date.parse('yyyyMMdd', '20100101')
    Odb getOdb(Date date) {
		Odb odb = new Odb()
		odb.date = date
		def odbServer = "http://odb.or.kr/" //http://www.odb.or.kr/odb/daily_list.asp?p_date=20130101&main_menu=1&sub_menu=1
		def odbServer2 = "http://qt.swim.org/user_dir/food/user_print_web.php?edit_all="+odb.date.format('yyyy-MM-dd')
		def growingService = "http://odb.or.kr/odb/series_view.asp?main_menu=1&sub_menu=3&no=78&grp=&page=1&startpage=&q_search_type=&q_search_value="
		//def odbServer = "https://github.com/yoriyuki/Camomile/blob/master/camomile-test/data/enc/EUC-KR..UTF8"
		def http = new HTTPBuilder( odbServer )
		//http://odb.or.kr/odb/daily_list.asp?main_menu=1&sub_menu=1&p_date=20130917
		//http.setEncoderRegistry(new EncoderRegistry(charset:'euc-kr'))
		//ParserRegistry.setDefaultCharset('EUC-KR')
	//	def h_parser = http.parser
	//	h_parser.setDefaultCharset('EUC-KR')
	//	println http.parser.defaultCharset
		println "date=${odb.date.format('yyyyMMdd')}"
		http.request( GET, TEXT ) {
			uri.path = '/odb/daily_list.asp'
			uri.query = [ main_menu: 1, sub_menu:1, p_date:odb.date.format('yyyyMMdd') ]
			println "pageUrl = $uri"
			//http.setEncoderRegistry(new EncoderRegistry(charset:'euc-kr'))
			//println response.defaultCharset
			//response.charset = 'euc-kr'
			ParserRegistry.setDefaultCharset('EUC-KR')
			response.success = { resp, reader ->
				//reader.charset = 'euc-kr'
				assert resp.statusLine.statusCode == 200
				println "Got response: ${resp.statusLine}"
				println "Content-Type: ${resp.headers.'Content-Type'}"
				println "Charset: ${ParserRegistry.getCharset(resp)}"
				//println html
				//println reader.getAt('euc-kr')
				//resp.headers.each {println it }
				//def content = new String(reader.text.getBytes('UTF-8'),'ISO-2022-KR')
				def content = reader.text
				def mp3FileUrl = ""
				try{
					mp3FileUrl = uri.scheme+'://'+uri.host+(content =~ /\/odb_mp3\/[^.]+.mp3/)[0]
				}catch(e){
					e.printStackTrace();
					println "Date = $odb.date"
					//throw e
				}
				println "mp3File = $mp3FileUrl"
				odb.englishVoiceUrl = mp3FileUrl
				
				def parser = new org.ccil.cowan.tagsoup.Parser()
				parser.setFeature(parser.namespacesFeature, false)
				//def dom = new XmlSlurper(parser).parseText(html)
				def rootNode = new XmlSlurper(parser).parseText(content)
				def obdContent = rootNode.body.'**'.findAll{it.@width =~/670/}[1]
				//println obdContent
				def orange_text1 = obdContent.'**'.findAll{ it.@class =~ /orange_text1/ } //bible
				def white_text1s = obdContent.'**'.findAll{ it.@class =~ /white_text1/ } //bible
				def green_text1s = obdContent.'**'.findAll{ it.@class =~ /green_text1/ } //title
				def gray_text3s = obdContent.'**'.findAll{ it.@class =~ /gray_text3/ } // contents, shortContents
				def gray_text1s = obdContent.'**'.findAll{ it.@class =~ /gray_text1/ } // ending
				def blue_text1s = obdContent.'**'.findAll{ it.@class =~ /blue_text1/ } // goodNews
				def bible_e = white_text1s[1].b.text()
				odb.biblePosition_en = white_text1s[1].text()
				odb.biblePosition = white_text1s[3].text()
				println white_text1s
				odb.songNumber = orange_text1[1]
				//def bible_h = white_text1s[3].text()
				odb.title_en = green_text1s[0].b.text()
				odb.title = green_text1s[1].text()
				odb.anotherBibleStatement_en = gray_text3s[0].b.text()
				odb.anotherBibleStatement = gray_text3s[1].b.text()

				odb.dailyBreadContent_en = gray_text3s[0].text().replaceFirst(/[^\n]+\n\s*/, "").replaceAll('\n','\n\n') //asp 소스 수정 필요
				odb.dailyBreadContent = gray_text3s[1].text().replaceFirst(odb.anotherBibleStatement, '').replaceAll('\n','\n\n')
				odb.dailyStatement_en = blue_text1s[0]
				odb.dailyStatement = blue_text1s[1]
				odb.dailyStatement2_en  = gray_text1s[0]
				odb.dailyStatement2  = gray_text1s[1]
				
				println "<<<<<<<<< 한 >>>>>>>>>>>>"
			}
		
			response.'404' = { println 'Not found' }
		
			// handler for any failure status code:
			//response.failure = { resp -> println "Unexpected error: ${resp.statusLine.statusCode} : ${resp.statusLine.reasonPhrase}" }
	
		}
		
		http = new HTTPBuilder( odbServer2 )
		http.request( GET, TEXT ) {
			println "pageUrl = $uri"
			//http.setEncoderRegistry(new EncoderRegistry(charset:'euc-kr'))
			//println response.defaultCharset
			//response.charset = 'euc-kr'
			ParserRegistry.setDefaultCharset('EUC-KR')
			response.success = { resp, reader ->
				//reader.charset = 'euc-kr'
				assert resp.statusLine.statusCode == 200
				println "Got response: ${resp.statusLine}"
				println "Content-Type: ${resp.headers.'Content-Type'}"
				println "Charset: ${ParserRegistry.getCharset(resp)}"
				//println html
				//println reader.getAt('euc-kr')
				//resp.headers.each {println it }
				//def content = new String(reader.text.getBytes('UTF-8'),'ISO-2022-KR')
				def content = reader.text
			
				def parser = new org.ccil.cowan.tagsoup.Parser()
				parser.setFeature(parser.namespacesFeature, false)
				//def dom = new XmlSlurper(parser).parseText(html)
				def rootNode = new XmlSlurper(parser).parseText(content)
				def main_body2 = rootNode.body.'**'.findAll{ it.@class =~ /main_body2/ } //bible
				odb.bibleContent_en = main_body2[0]
				odb.bibleContent = main_body2[1]
				//odb.biblePosition = white_text1s[3].text()
				println main_body2

			}
		
			response.'404' = { println 'Not found' }
		
			// handler for any failure status code:
			//response.failure = { resp -> println "Unexpected error: ${resp.statusLine.statusCode} : ${resp.statusLine.reasonPhrase}" }
	
		}
		if (!odb.save()) {
			odb.errors.allErrors.each {
				println it
			}
		}
		return odb
    }
	
	Odb saveOdbData(startDate) {
		
		if(startDate == null ){
			startDate = this.startDate
		}
		LastId lastId = LastId.get(1)
		Date queryDate
		Odb myOdb
		if(lastId == null) {
			lastId = new LastId()
			queryDate = startDate
		}else{
			queryDate = Odb.get(lastId.odbId).date + 1
		}
		while(true){
			try{
				myOdb = getOdb(queryDate)
			}catch(Exception e){
				println e.printStackTrace();
				break;
			}
			queryDate++
		}
		lastId.odb = myOdb
		lastId.save()
		myOdb
	}
	
}
