package kr.odb

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GrowingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Growing.list(params), model:[growingInstanceCount: Growing.count()]
    }

    def show(Growing growingInstance) {
        respond growingInstance
    }

    def create() {
        respond new Growing(params)
    }

    @Transactional
    def save(Growing growingInstance) {
        if (growingInstance == null) {
            notFound()
            return
        }

        if (growingInstance.hasErrors()) {
            respond growingInstance.errors, view:'create'
            return
        }

        growingInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'growingInstance.label', default: 'Growing'), growingInstance.id])
                redirect growingInstance
            }
            '*' { respond growingInstance, [status: CREATED] }
        }
    }

    def edit(Growing growingInstance) {
        respond growingInstance
    }

    @Transactional
    def update(Growing growingInstance) {
        if (growingInstance == null) {
            notFound()
            return
        }

        if (growingInstance.hasErrors()) {
            respond growingInstance.errors, view:'edit'
            return
        }

        growingInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Growing.label', default: 'Growing'), growingInstance.id])
                redirect growingInstance
            }
            '*'{ respond growingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Growing growingInstance) {

        if (growingInstance == null) {
            notFound()
            return
        }

        growingInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Growing.label', default: 'Growing'), growingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

	def list() {
		
		respond Growing.list(sort:"series", order: "desc")
	}

	def uploadData(){
		File excelFile = new File('growingData.xlsx')
		println "file path = ${excelFile.absolutePath}"
		println "servletContext  path = ${request.servletContext.getRealPath(File.separator)}"
		ExcelBuilder excelBuilder = new ExcelBuilder('growingData.xlsx',null).eachLine([labels:true]) {
			try{
				if(cell(0)!=null){
					try {
						Growing  growing = new Growing()
						//growing.series = cell(0).numericCellValue.toInteger()
						growing.series = cell(0).numericCellValue.toInteger()
						growing.title = cell(1).toString()
						if(cell(2)!= null) growing.pdfUrl = cell(2).toString()
						growing.save()
					} catch (Exception e) {
						e.printStackTrace()
					}
				}
			}catch (Exception e) {
				e.printStackTrace()
				errors.add("파일 형식을 확인하세요")
			}
		}
		redirect action: "list", method: "GET"
	}

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'growingInstance.label', default: 'Growing'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
