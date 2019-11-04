package teagle

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.*

class InterviewAssesmentController {

    InterviewAssesmentService interviewAssesmentService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond interviewAssesmentService.list(params), model:[interviewAssesmentCount: interviewAssesmentService.count()]
    }


    def show(Long id) {
        respond interviewAssesmentService.get(id)
    }

    def create() {
        respond new InterviewAssesment(params)
    }

    def save(InterviewAssesment interviewAssesment) {
        if (interviewAssesment == null) {
            notFound()
            return
        }

        try {
            interviewAssesmentService.save(interviewAssesment)
        } catch (ValidationException e) {
            respond interviewAssesment.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'interviewAssesment.label', default: 'InterviewAssesment'), interviewAssesment.id])
                redirect interviewAssesment
            }
            '*' { respond interviewAssesment, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond interviewAssesmentService.get(id)
    }

    def update(InterviewAssesment interviewAssesment) {
        if (interviewAssesment == null) {
            notFound()
            return
        }

        try {
            interviewAssesmentService.save(interviewAssesment)
        } catch (ValidationException e) {
            respond interviewAssesment.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'interviewAssesment.label', default: 'InterviewAssesment'), interviewAssesment.id])
                redirect interviewAssesment
            }
            '*'{ respond interviewAssesment, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        interviewAssesmentService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'interviewAssesment.label', default: 'InterviewAssesment'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'interviewAssesment.label', default: 'InterviewAssesment'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
