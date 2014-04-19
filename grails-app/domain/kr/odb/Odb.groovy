package kr.odb

class Odb {
	Date date
	String title
	String title_en
	String biblePosition
	String bibleContent
	String anotherBibleStatement
	String songNumber
	String dailyBreadContent
	String dailyStatement
	String dailyStatement2
	String dailyOldTestament
	String dailyNewTestament
	String biblePosition_en
	String bibleContent_en
	String anotherBibleStatement_en
	String dailyBreadContent_en
	String dailyStatement_en
	String dailyStatement2_en
	String dailyOldTestament_en
	String dailyNewTestament_en

	String englishVoiceUrl
    static constraints = {
		bibleContent nullable:true
		dailyOldTestament nullable:true 
		dailyOldTestament_en nullable:true 
		dailyNewTestament nullable:true 
		dailyNewTestament_en nullable:true 
    }
	static mapping = {
		bibleContent type:"text"
		bibleContent_en type:"text"
		dailyBreadContent_en type:"text"
		dailyBreadContent type:"text"
		dailyStatement type: "text"
		dailyStatement_en type: "text"
   }
}