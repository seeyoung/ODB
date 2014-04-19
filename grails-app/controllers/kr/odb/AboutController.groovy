package kr.odb

class AboutController {

	OdbDataGetterService odbDataGetterService
	
	
	def index() {
		redirect(action: "press_1", params: params)
	}

	def press_1(){
	}
	def press_2(){
	}
	def press_3(){
	}
	def press_4(){
	}
	def press_5(){
	}
	
	def loadOdbData(){
		Odb odb = odbDataGetterService.saveOdbData()
		if(odb == null){
			odb = Odb.get(LastId.get(1).odb.id)
		}
		render "${odb.date.format('yyyy-MM-dd')} 일자까지 load되었습니다."
		return;
	}
	

}
