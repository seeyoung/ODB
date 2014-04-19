package kr.odb

class Growing {
	
	int series
	String title
	String pdfUrl

    static constraints = {
		pdfUrl nullable : true
		series unique:true
    }
}
