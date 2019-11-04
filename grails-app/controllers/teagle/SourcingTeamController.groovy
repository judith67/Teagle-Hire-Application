package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class SourcingTeamController {

    SourcingTeamService sourcingTeamService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
          def resumes = new ResumeUpload(candname:"Judith Kaushik",email:"judithkaushik@gmail.com",phone:9742654357,city:"Bangalore",resumestatus:"Tech 1",state:['Java','.net'],year:2,month:2,aadhaar:994861679948,interest:"Interested",pan:"DHWPK3913G",resumetitle:"Permanent",np:30,relocation:"Yes",rating:78);
          def jobs = new JobDescription(title:"#0001",projectname:"Treasury mgmt.",billable:"yes",function:"Applications",jdtext:"hello",nopos:5,jobstatus:"Open",postype:"Permanent",joblevel:"L3",roles:"none",exp:2.3,jobtitle:"Software Engg.",qualification:"M.C.A",duration:14,city:"Bangalore",salary:350000,billing:30,currency:"AUD",client:"CitiBank",resumes:resumes)
          [jobd:jobs]
    }

    def show(Long id) {
        respond sourcingTeamService.get(id)
    }

    def create() {
        respond new SourcingTeam(params)
    }

    def save(SourcingTeam sourcingTeam) {
        if (sourcingTeam == null) {
            notFound()
            return
        }

        try {
            sourcingTeamService.save(sourcingTeam)
        } catch (ValidationException e) {
            respond sourcingTeam.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sourcingTeam.label', default: 'SourcingTeam'), sourcingTeam.id])
                redirect sourcingTeam
            }
            '*' { respond sourcingTeam, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond sourcingTeamService.get(id)
    }

    def update(SourcingTeam sourcingTeam) {
        if (sourcingTeam == null) {
            notFound()
            return
        }

        try {
            sourcingTeamService.save(sourcingTeam)
        } catch (ValidationException e) {
            respond sourcingTeam.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'sourcingTeam.label', default: 'SourcingTeam'), sourcingTeam.id])
                redirect sourcingTeam
            }
            '*'{ respond sourcingTeam, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        sourcingTeamService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'sourcingTeam.label', default: 'SourcingTeam'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sourcingTeam.label', default: 'SourcingTeam'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
