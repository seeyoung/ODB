package kr.odb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OdbController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Odb.list(params), model:[odbInstanceCount: Odb.count()]
    }
	
    def show(String date) {
		if(!date) date = new Date().format('yyyyMMdd')
		
		Date queryDate = Date.parse("yyyyMMdd", date)
		Odb odbInstance = Odb.findByDate(queryDate)
		
        respond odbInstance
    }

	def changeLang(int id){
		if(id==1){
			session.lang = "ko"
		}else{
			session.lang = 'en'
		}
		render ""
		return
	}
    def list(int year, int month) {
		def startDate = new Date()
		def endDate = new Date()
		startDate.set year:year, month:month-1, date:1
		endDate.set year:year, month:month, date:1
		
		startDate = startDate - 1
		endDate = endDate - 1
		println "startDate=$startDate, endDate=$endDate"
		def yearList = 2010..2015
		def monthList = 1..12
		def odbInstanceList = Odb.findAllByDateBetween(startDate, endDate) 
		println odbInstanceList
        respond odbInstanceList, model:[yearList:yearList, monthList:monthList]
    }

    def show2(Odb odbInstance) {
        respond odbInstance
    }

    def create() {
        respond new Odb(params)
    }

    @Transactional
    def save(Odb odbInstance) {
        if (odbInstance == null) {
            notFound()
            return
        }

        if (odbInstance.hasErrors()) {
            respond odbInstance.errors, view:'create'
            return
        }

        odbInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'odbInstance.label', default: 'Odb'), odbInstance.id])
                redirect odbInstance
            }
            '*' { respond odbInstance, [status: CREATED] }
        }
    }

    def edit(Odb odbInstance) {
        respond odbInstance
    }

    @Transactional
    def update(Odb odbInstance) {
        if (odbInstance == null) {
            notFound()
            return
        }

        if (odbInstance.hasErrors()) {
            respond odbInstance.errors, view:'edit'
            return
        }

        odbInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Odb.label', default: 'Odb'), odbInstance.id])
                redirect odbInstance
            }
            '*'{ respond odbInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Odb odbInstance) {

        if (odbInstance == null) {
            notFound()
            return
        }

        odbInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Odb.label', default: 'Odb'), odbInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'odbInstance.label', default: 'Odb'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
