package kr.odb

class BreadController {

    def index() { 
		redirect(action: "contents", params: params)
	}
	
	def contents(){
	}
	def song(){
	}

	def list(String id){
		if(id=='ko') render(view: "list_ko")
		else render(view: "list_en")
	}

	def vod(){
	}
	def press_2(){
	}
	def press_3(){
	}
	def press_4(){
	}
	def press_5(){
	}
	def more(){
	}
	def growingList(){
	}
	def recommend(){}
}
