package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class PartnersController {

    PartnersService partnersService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
      def resumes = new ResumeUpload(candname:"Judith Kaushik",email:"judithkaushik@gmail.com",phone:9742654357,city:"Bangalore",state:['Java','.net'],year:2,month:2,aadhaar:994861679948,interest:"Interested",pan:"DHWPK3913G",resumetitle:"Permanent",np:30,relocation:"Yes",rating:78);
      def jobs = new JobDescription(title:"#0001",billable:"yes",function:"none",jdtext:"hello",nopos:5,postype:"Permanent",joblevel:"L3",roles:"none",jobtitle:"Software Engg.",qualification:"M.C.A",duration:14,country:"India",city:"Bangalore",salary:350000,billing:30,currency:"AUD",client:"Client",resumes:resumes)
      [jobd:jobs]
    }

    def show(Long id) {
        respond partnersService.get(id)
    }

    def create() {
        respond new Partners(params)
    }

    def save(Partners partners) {
        if (partners == null) {
            notFound()
            return
        }

        try {
            partnersService.save(partners)
        } catch (ValidationException e) {
            respond partners.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'partners.label', default: 'Partners'), partners.id])
                redirect partners
            }
            '*' { respond partners, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond partnersService.get(id)
    }

    def update(Partners partners) {
        if (partners == null) {
            notFound()
            return
        }

        try {
            partnersService.save(partners)
        } catch (ValidationException e) {
            respond partners.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'partners.label', default: 'Partners'), partners.id])
                redirect partners
            }
            '*'{ respond partners, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        partnersService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'partners.label', default: 'Partners'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'partners.label', default: 'Partners'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
