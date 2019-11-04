package teagle

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.*

class ResumeUploadController {

    ResumeUploadService resumeUploadService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond resumeUploadService.list(params), model:[resumeUploadCount: resumeUploadService.count()]
    }

    def show(Long id) {
        respond resumeUploadService.get(id)
    }

    def create() {
        respond new ResumeUpload(params)
    }

    def save(ResumeUpload resumeUpload) {
        if (resumeUpload == null) {
            notFound()
            return
        }

        try {
            resumeUploadService.save(resumeUpload)
        } catch (ValidationException e) {
            respond resumeUpload.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'resumeUpload.label', default: 'ResumeUpload'), resumeUpload.id])
                redirect resumeUpload
            }
            '*' { respond resumeUpload, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond resumeUploadService.get(id)
    }

    def update(ResumeUpload resumeUpload) {
        if (resumeUpload == null) {
            notFound()
            return
        }

        try {
            resumeUploadService.save(resumeUpload)
        } catch (ValidationException e) {
            respond resumeUpload.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'resumeUpload.label', default: 'ResumeUpload'), resumeUpload.id])
                redirect resumeUpload
            }
            '*'{ respond resumeUpload, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        resumeUploadService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'resumeUpload.label', default: 'ResumeUpload'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'resumeUpload.label', default: 'ResumeUpload'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
