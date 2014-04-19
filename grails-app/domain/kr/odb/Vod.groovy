package kr.odb

class Vod {

	String title
	Date date
	String author
	String youtubeId
	
    static constraints = {
    }
	
	String getVodUrl(){
		"http://www.youtube.com/watch?v=$youtubeId"
	}
	
	String getThumbUrl(){
		"http://img.youtube.com/vi/$youtubeId/1.jpg"
	}
}
