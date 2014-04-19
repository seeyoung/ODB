package kr.odb

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Vod)
class VodSpec extends Specification {

	Odb odb
    def setup() {
		odb = new Odb()

    }

    def cleanup() {
    }

    void "validation test"() {
		when: '널 허용 테스트 '
		def vod = new Vod()
		
		then: 'validation fail'
		!vod.validate()
		
		when: '타이틀과 날짜, 저작권자, youtubeId는 필수이다.'
		vod = new Vod(title:'차고 넘치는', youtubeId:'AG0jlKdB1s0', author: "김상복 목사", date:new Date())
		
		then: 'validation success'
		vod.validate()
    }

	void "동영상과 thumbnail이미지  URL 테스트 "() {
		Vod vod = new Vod(title:'차고 넘치는', youtubeId:'AG0jlKdB1s0', author: "김상복 목사", date:new Date())
		
		when: "동영상 url을 vodUrl변수에 할"
		def vodUrl = vod.vodUrl
		
		then:
		vodUrl == "http://www.youtube.com/watch?v=AG0jlKdB1s0"
		
		when: "동영상 url을 vodUrl변수에 할"
		def thumbUrl = vod.thumbUrl
		
		then:
		thumbUrl == "http://img.youtube.com/vi/AG0jlKdB1s0/1.jpg"
		
	}
		
}		
		