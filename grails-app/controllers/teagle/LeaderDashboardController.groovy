package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class LeaderDashboardController {

    LeaderDashboardService leaderDashboardService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
      def resumes = new ResumeUpload(candname:"Judith Kaushik",email:"judithkaushik@gmail.com",phone:9742654357,city:"Bangalore",state:['Java','.net'],year:2,month:2,aadhaar:994861679948,interest:"Interested",pan:"DHWPK3913G",resumetitle:"Permanent",np:30,relocation:"Yes",rating:78);
      def jobs = new JobDescription(title:"#0001",billable:"yes",function:"none",jdtext:"hello",nopos:5,postype:"Permanent",joblevel:"L3",roles:"none",jobtitle:"Software Engg.",qualification:"M.C.A",duration:14,country:"India",city:"Bangalore",salary:350000,billing:30,currency:"AUD",client:"Client",resumes:resumes)
      [jobd:jobs]
    }

    def show(Long id) {
        respond leaderDashboardService.get(id)
    }

    def create() {
        respond new LeaderDashboard(params)
    }

    def save(LeaderDashboard leaderDashboard) {
        if (leaderDashboard == null) {
            notFound()
            return
        }

        try {
            leaderDashboardService.save(leaderDashboard)
        } catch (ValidationException e) {
            respond leaderDashboard.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'leaderDashboard.label', default: 'LeaderDashboard'), leaderDashboard.id])
                redirect leaderDashboard
            }
            '*' { respond leaderDashboard, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond leaderDashboardService.get(id)
    }

    def update(LeaderDashboard leaderDashboard) {
        if (leaderDashboard == null) {
            notFound()
            return
        }

        try {
            leaderDashboardService.save(leaderDashboard)
        } catch (ValidationException e) {
            respond leaderDashboard.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'leaderDashboard.label', default: 'LeaderDashboard'), leaderDashboard.id])
                redirect leaderDashboard
            }
            '*'{ respond leaderDashboard, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        leaderDashboardService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'leaderDashboard.label', default: 'LeaderDashboard'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'leaderDashboard.label', default: 'LeaderDashboard'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
