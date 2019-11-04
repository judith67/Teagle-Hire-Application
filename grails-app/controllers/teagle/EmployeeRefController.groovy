package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import teagle.JobDescription
import teagle.ResumeUpload

class EmployeeRefController {

    EmployeeRefService employeeRefService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
          def resumes = new ResumeUpload(candname:"Judith Kaushik",email:"judithkaushik@gmail.com",phone:9742654357,city:"Bangalore",state:['Java','.net'],year:2,month:2,aadhaar:994861679948,interest:"Interested",pan:"DHWPK3913G",resumetitle:"Permanent",np:30,relocation:"Yes",rating:78);
          def jobs = new JobDescription(title:"#0001",billable:"yes",function:"none",jdtext:"hello",nopos:5,postype:"Permanent",joblevel:"L3",roles:"none",jobtitle:"Software Engg.",qualification:"M.C.A",duration:14,country:"India",city:"Bangalore",salary:350000,billing:30,currency:"AUD",client:"Client",resumes:resumes)
          [jobd:jobs]
    }

    def show(Long id) {
        respond employeeRefService.get(id)
    }

    def create() {
        respond new EmployeeRef(params)
    }

    def save(EmployeeRef employeeRef) {
        if (employeeRef == null) {
            notFound()
            return
        }

        try {
            employeeRefService.save(employeeRef)
        } catch (ValidationException e) {
            respond employeeRef.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'employeeRef.label', default: 'EmployeeRef'), employeeRef.id])
                redirect employeeRef
            }
            '*' { respond employeeRef, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond employeeRefService.get(id)
    }

    def update(EmployeeRef employeeRef) {
        if (employeeRef == null) {
            notFound()
            return
        }

        try {
            employeeRefService.save(employeeRef)
        } catch (ValidationException e) {
            respond employeeRef.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'employeeRef.label', default: 'EmployeeRef'), employeeRef.id])
                redirect employeeRef
            }
            '*'{ respond employeeRef, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        employeeRefService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'employeeRef.label', default: 'EmployeeRef'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'employeeRef.label', default: 'EmployeeRef'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
