package teagle

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.*

class JobDescriptionController {

    JobDescriptionService jobDescriptionService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond jobDescriptionService.list(params), model:[jobDescriptionCount: jobDescriptionService.count()]
    }

    def show(Long id) {
        respond jobDescriptionService.get(id)
    }

    def create() {
        respond new JobDescription(params)
    }

    def save(JobDescription jobDescription) {
        if (jobDescription == null) {
            notFound()
            return
        }

        try {
            jobDescriptionService.save(jobDescription)
        } catch (ValidationException e) {
            respond jobDescription.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'jobDescription.label', default: 'JobDescription'), jobDescription.id])
                redirect jobDescription
            }
            '*' { respond jobDescription, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond jobDescriptionService.get(id)
    }

    def update(JobDescription jobDescription) {
        if (jobDescription == null) {
            notFound()
            return
        }

        try {
            jobDescriptionService.save(jobDescription)
        } catch (ValidationException e) {
            respond jobDescription.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'jobDescription.label', default: 'JobDescription'), jobDescription.id])
                redirect jobDescription
            }
            '*'{ respond jobDescription, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        jobDescriptionService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'jobDescription.label', default: 'JobDescription'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'jobDescription.label', default: 'JobDescription'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
