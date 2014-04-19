package kr.odb

import java.util.Date;
import grails.test.mixin.*
import org.junit.*
/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(OdbDataGetterService)
@Mock([Odb,LastId])
class OdbDataGetterServiceTests {
	void testGetODBData(){
		Odb odb = new Odb();
		odb.englishVoiceUrl = 'http://odb.or.kr/odb_mp3/odb-01-01-13.mp3'
		odb.date = Date.parse('yyyy-MM-dd','2013-01-01')
		odb.title = "[복된 삶]"
		odb.title_en = "[THE GOOD LIFE]"
		odb.biblePosition = "시편 73:21-28"
		odb.anotherBibleStatement = "하나님께 가까이 함이 내게 복이라- 시편 73:28"
		odb.bibleContent = 
'''시편 73:21-28
[21] 내 마음이 산란하며 내 양심이 찔렸나이다
[22] 내가 이같이 우매 무지함으로 주 앞에 짐승이오나
[23] 내가 항상 주와 함께 하니 주께서 내 오른손을 붙드셨나이다
[24] 주의 교훈으로 나를 인도하시고 후에는 영광으로 나를 영접하시리니
[25] 하늘에서는 주 외에 누가 내게 있으리요 땅에서는 주 밖에 내가 사모할 이 없나이다
[26] 내 육체와 마음은 쇠약하나 하나님은 내 마음의 반석이시요 영원한 분깃이시라
[27] 무릇 주를 멀리하는 자는 망하리니 음녀 같이 주를 떠난 자를 주께서 다 멸하셨나이다
[28] 하나님께 가까이 함이 내게 복이라 내가 주 여호와를 나의 피난처로 삼아 주의 모든 행적을 전파하리이다'''

		odb.songNumber = "찬송가(hymn):288장"
		odb.dailyBreadContent = 
'''미모, 재산, 권력, 사랑, 결혼, 기쁨 등은 좋은 것들이지만 가장 좋은 것은 아닙니다. 가장 좋은 것은 하나님을 사랑하고 하나님의 사랑을 받아들이는 것입니다. 즉 하나님께 영광을 돌리고 그분을 우리의 평생 친구로 삼는 것입니다. 그렇게 하는 것이 지금 우리에게 만족과 기쁨을 가져다주기 때문에 우리를 가능한 가장 복된 삶으로 인도합니다(요 10:10), 그리고 그것은 그리스도인들이 영원히 해야 할 일입니다.

우리가 하나님을 위해 시간을 내고, 당신과 나를 만드신 그분의 사랑 안에 머물러야 하는 이유도 바로 그 때문입니다. 그것은 우리가 존재하는 이유이며, 우리의 삶을 가장 복되게 만드는 수단입니다.

나는 시편기자가 그것을 이렇게 표현한 것을 좋아합니다. “하나님께 가까이함이 내게 복이라 내가 주 여호와를 나의 피난처로 삼아 주의 모든 행적을 전파하리이다”(시 73:28). 다시 말하자면 복된 삶이란 그 무엇보다도 우리를 사랑하시는 하나님을 가까이하는 삶입니다.

그럼 어떻게 하면 하나님을 “가까이 하며” 살 수 있을까요? 오래 전부터 제가 해왔던 방법을 말씀드리겠습니다. 매일 아침마다 잠깐 동안 복음서(마태복음, 마가복음, 누가복음, 요한복음)에서 몇 구절을 읽고 예수님이 말씀하신 것이나 행하신 것을 적어보십시오. 예수님이 오신 것은 결국은 하나님이 어떤 분이신가를 보여주시기 위해서였습니다(히 1:1-3). 그런 다음 당신 자신을 복음서의 이야기들 속에 대입시켜 보십시오. 예를 들어 예수님이 사랑의 손길로 고쳐주신 나병환자가 당신이라고 생각해보는 것입니다(막 1:40-45). 그리고 하나님이 얼마나 당신을 사랑하시는지 생각해보고 하나님께 감사하십시오!'''

		odb.dailyStatement = 
'''주 안에 기쁨 누리므로
마음의 풍랑이 잔잔하니
세상과 나는 간 곳 없고
구속한 주만 보이도다'''

		odb.dailyStatement2 = "예수님이 나를 사랑하신다는 것을 생각만 해도 얼마나 좋은지!"
		odb.dailyOldTestament = null
		odb.dailyNewTestament = null
		odb.biblePosition_en = "Psalm 73:21-28  "
		odb.anotherBibleStatement_en = "It is good for me to draw near to God. −Psalm 73:28"
		odb.bibleContent_en = 
'''Psalm 73:21-28
[21] When my heart was grieved and my spirit embittered,
[22] I was senseless and ignorant; I was a brute beast before you.
[23] Yet I am always with you; you hold me by my right hand.
[24] You guide me with your counsel, and afterward you will take me into glory.
[25] Whom have I in heaven but you? And earth has nothing I desire besides you.
[26] My flesh and my heart may fail, but God is the strength of my heart and my portion forever.
[27] Those who are far from you will perish; you destroy all who are unfaithful to you.
[28] But as for me, it is good to be near God. I have made the Sovereign LORD my refuge; I will tell of all your deeds.'''

		odb.dailyBreadContent_en = 
'''Beauty, wealth, power, love, marriage, and pleasure are good things, but they’re not the best. The best is loving God and taking in His love—bringing Him glory and making Him our friend for life. That leads to the best possible life because it gives us satisfaction and joy now (John 10:10), and it’s what Christians are going to be doing forever.

That’s why we should make time for God and rest in His love—the love that made you and me. It is the reason for our existence and the means by which we will make the most of our lives.

I like the way the psalmist put it: “It is good for me to draw near to God; I have put my trust in the Lord God, that I may declare all Your works”(Ps.73:28). In other words, the good life is drawing close to the One who loves us like no other.

And how can we “draw close” to Him? Here’s a practice I began many years ago: Take a few minutes every morning to read some verses from the Gospels (Matthew, Mark, Luke, John) and note what Jesus said or did. After all, He came to show us what God is like (Heb.1:1-3). Put yourself in the story—in the place of the leper He healed with His loving touch, for example (Mark 1:40-45). Think about how much He loves you and then thank Him!
'''

		odb.dailyStatement_en = 
'''Perfect submission, all is at rest,
I in my Savior am happy and blest;
Watching and waiting, looking above,
Filled with His goodness, lost in His love. −Crosby'''

		odb.dailyStatement2_en = 
'''The wonder of it all−
just to think that Jesus loves me!'''

		odb.dailyOldTestament_en = null
		odb.dailyNewTestament_en = null
	
		Odb myOdb = service.getOdb(Date.parse("yyyyMMdd", '20130101'))

		assert odb.englishVoiceUrl == myOdb.englishVoiceUrl
		assert odb.date == myOdb.date
		assert odb.title == myOdb.title
		assert odb.title_en == myOdb.title_en
		assert odb.biblePosition == myOdb.biblePosition
		assert odb.bibleContent == myOdb.bibleContent
		assert odb.songNumber == myOdb.songNumber
		assert odb.dailyBreadContent == myOdb.dailyBreadContent
		assert odb.dailyStatement == myOdb.dailyStatement
		assert odb.dailyStatement2 == myOdb.dailyStatement2
		assert odb.dailyOldTestament == myOdb.dailyOldTestament
		assert odb.dailyNewTestament == myOdb.dailyNewTestament
		//println "^$odb.biblePosition_en,$serviceOdb.biblePosition_en^"
		assert odb.biblePosition_en == myOdb.biblePosition_en
		assert odb.bibleContent_en == myOdb.bibleContent_en
		//assert odb.dailyBreadContent_en == serviceOdb.dailyBreadContent_en
		assert odb.dailyStatement_en == myOdb.dailyStatement_en
		assert odb.dailyStatement2_en == myOdb.dailyStatement2_en
		assert odb.dailyOldTestament_en == myOdb.dailyOldTestament_en
		assert odb.dailyNewTestament_en == myOdb.dailyNewTestament_en
		
		assert myOdb.validate()
	
	}

	void testSaveOdbData(){
//		service.saveOdbData()
//		
//		assert Odb.size() == 31
	}
	
}
