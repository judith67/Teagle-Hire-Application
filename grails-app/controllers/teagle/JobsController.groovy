package teagle

import grails.validation.ValidationException
import teagle.JobDescription
import teagle.ResumeUpload

import static org.springframework.http.HttpStatus.*

class JobsController {

    JobsService jobsService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def message
    def index() {
          def resumes = new ResumeUpload(candname:"Judith Kaushik",email:"judithkaushik@gmail.com",phone:9742654357,city:"Bangalore",resumestatus:"Tech 1",state:['Java','.net'],year:2,month:2,aadhaar:994861679948,interest:"Interested",pan:"DHWPK3913G",resumetitle:"Permanent",np:30,relocation:"Yes",rating:78);
          def jobs = new JobDescription(title:"#0001",projectname:"Treasury mgmt.",billable:"yes",function:"Applications",jdtext:"hello",nopos:5,jobstatus:"Open",postype:"Permanent",joblevel:"L3",roles:"none",exp:2.3,jobtitle:"Software Engg.",qualification:"M.C.A",duration:14,city:"Bangalore",salary:350000,billing:30,currency:"AUD",client:"CitiBank",resumes:resumes)
          [jobd:jobs]
      }

    def show(Long id) {
        respond jobsService.get(id)
    }

    def create() {
        respond new Jobs(params)
    }

    def save(Jobs jobs) {
        if (jobs == null) {
            notFound()
            return
        }

        try {
            jobsService.save(jobs)
        } catch (ValidationException e) {
            respond jobs.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'jobs.label', default: 'Jobs'), jobs.id])
                redirect jobs
            }
            '*' { respond jobs, [status: CREATED] }
        }
    }



    def edit(Long id) {
        respond jobsService.get(id)
    }

    def update(Jobs jobs) {
        if (jobs == null) {
            notFound()
            return
        }

        try {
            jobsService.save(jobs)
        } catch (ValidationException e) {
            respond jobs.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'jobs.label', default: 'Jobs'), jobs.id])
                redirect jobs
            }
            '*'{ respond jobs, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        jobsService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'jobs.label', default: 'Jobs'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'jobs.label', default: 'Jobs'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
