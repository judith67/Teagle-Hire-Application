package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class HiringManagerController {

    HiringManagerService hiringManagerService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
          def resumes = new ResumeUpload(candname:"Judith Kaushik",email:"judithkaushik@gmail.com",phone:9742654357,city:"Bangalore",resumestatus:"Tech 1",state:['Java','.net'],year:2,month:2,aadhaar:994861679948,interest:"Interested",pan:"DHWPK3913G",resumetitle:"Permanent",np:30,relocation:"Yes",rating:78);
          def jobs = new JobDescription(title:"#0001",projectname:"Treasury mgmt.",billable:"yes",function:"Applications",jdtext:"hello",nopos:5,jobstatus:"Open",postype:"Permanent",joblevel:"L3",roles:"none",exp:2.3,jobtitle:"Software Engg.",qualification:"M.C.A",duration:14,city:"Bangalore",salary:350000,billing:30,currency:"AUD",client:"CitiBank",resumes:resumes)
          [jobd:jobs]
    }

    def show(Long id) {
        respond hiringManagerService.get(id)
    }

    def create() {
        respond new HiringManager(params)
    }

    def save(HiringManager hiringManager) {
        if (hiringManager == null) {
            notFound()
            return
        }

        try {
            hiringManagerService.save(hiringManager)
        } catch (ValidationException e) {
            respond hiringManager.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'hiringManager.label', default: 'HiringManager'), hiringManager.id])
                redirect hiringManager
            }
            '*' { respond hiringManager, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond hiringManagerService.get(id)
    }

    def update(HiringManager hiringManager) {
        if (hiringManager == null) {
            notFound()
            return
        }

        try {
            hiringManagerService.save(hiringManager)
        } catch (ValidationException e) {
            respond hiringManager.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'hiringManager.label', default: 'HiringManager'), hiringManager.id])
                redirect hiringManager
            }
            '*'{ respond hiringManager, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        hiringManagerService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'hiringManager.label', default: 'HiringManager'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'hiringManager.label', default: 'HiringManager'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
