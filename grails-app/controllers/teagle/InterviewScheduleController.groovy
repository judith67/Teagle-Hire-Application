package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class InterviewScheduleController {

    InterviewScheduleService interviewScheduleService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond interviewScheduleService.list(params), model:[interviewScheduleCount: interviewScheduleService.count()]
    }

    def show(Long id) {
        respond interviewScheduleService.get(id)
    }

    def create() {
        respond new InterviewSchedule(params)
    }

    def save(InterviewSchedule interviewSchedule) {
        if (interviewSchedule == null) {
            notFound()
            return
        }

        try {
            interviewScheduleService.save(interviewSchedule)
        } catch (ValidationException e) {
            respond interviewSchedule.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'interviewSchedule.label', default: 'InterviewSchedule'), interviewSchedule.id])
                redirect interviewSchedule
            }
            '*' { respond interviewSchedule, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond interviewScheduleService.get(id)
    }

    def update(InterviewSchedule interviewSchedule) {
        if (interviewSchedule == null) {
            notFound()
            return
        }

        try {
            interviewScheduleService.save(interviewSchedule)
        } catch (ValidationException e) {
            respond interviewSchedule.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'interviewSchedule.label', default: 'InterviewSchedule'), interviewSchedule.id])
                redirect interviewSchedule
            }
            '*'{ respond interviewSchedule, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        interviewScheduleService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'interviewSchedule.label', default: 'InterviewSchedule'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'interviewSchedule.label', default: 'InterviewSchedule'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
