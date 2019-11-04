package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class CareerPageController {

    CareerPageService careerPageService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
      def resumes = new ResumeUpload(candname:"Judith Kaushik",email:"judithkaushik@gmail.com",phone:9742654357,city:"Bangalore",state:['Java','.net'],year:2,month:2,aadhaar:994861679948,pan:"DHWPK3913G",resumetitle:"Permanent",np:30,relocation:"Yes");
      def jobs = new JobDescription(title:"#0001",billable:"yes",function:"none",jdtext:"hello",nopos:5,postype:"Permanent",joblevel:"L3",roles:"none",jobtitle:"Software Engg.",qualification:"M.C.A",duration:14,country:"India",state:"Karnataka",city:"Bangalore",salary:350000,billing:30,currency:"AUD",client:"Client",resumes:resumes)
      [jobd:jobs]
    }

    def show(Long id) {
        respond careerPageService.get(id)
    }

    def create() {
        respond new CareerPage(params)
    }

    def save(CareerPage careerPage) {
        if (careerPage == null) {
            notFound()
            return
        }

        try {
            careerPageService.save(careerPage)
        } catch (ValidationException e) {
            respond careerPage.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'careerPage.label', default: 'CareerPage'), careerPage.id])
                redirect careerPage
            }
            '*' { respond careerPage, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond careerPageService.get(id)
    }

    def update(CareerPage careerPage) {
        if (careerPage == null) {
            notFound()
            return
        }

        try {
            careerPageService.save(careerPage)
        } catch (ValidationException e) {
            respond careerPage.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'careerPage.label', default: 'CareerPage'), careerPage.id])
                redirect careerPage
            }
            '*'{ respond careerPage, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        careerPageService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'careerPage.label', default: 'CareerPage'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'careerPage.label', default: 'CareerPage'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
