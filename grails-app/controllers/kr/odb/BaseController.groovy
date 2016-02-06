package kr.odb

class BaseController {
	
    def index() { }
	
	def help(){
	}
	
	def subscribe(){
		
	}
	
	def goGsp() {
		//def view = params.page
		def view = params.folder? "/${params.folder}/${params.page}":"/base/${params.page}"
		render (view:view)
		return;
	}

}
