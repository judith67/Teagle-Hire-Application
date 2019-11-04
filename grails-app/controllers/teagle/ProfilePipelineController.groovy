package teagle

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.*

class ProfilePipelineController {

    ProfilePipelineService profilePipelineService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond profilePipelineService.list(params), model:[profilePipelineCount: profilePipelineService.count()]
    }

    def show(Long id) {
        respond profilePipelineService.get(id)
    }

    def create() {
        respond new ProfilePipeline(params)
    }

    def save(ProfilePipeline profilePipeline) {
        if (profilePipeline == null) {
            notFound()
            return
        }

        try {
            profilePipelineService.save(profilePipeline)
        } catch (ValidationException e) {
            respond profilePipeline.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'profilePipeline.label', default: 'ProfilePipeline'), profilePipeline.id])
                redirect profilePipeline
            }
            '*' { respond profilePipeline, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond profilePipelineService.get(id)
    }

    def update(ProfilePipeline profilePipeline) {
        if (profilePipeline == null) {
            notFound()
            return
        }

        try {
            profilePipelineService.save(profilePipeline)
        } catch (ValidationException e) {
            respond profilePipeline.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'profilePipeline.label', default: 'ProfilePipeline'), profilePipeline.id])
                redirect profilePipeline
            }
            '*'{ respond profilePipeline, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        profilePipelineService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'profilePipeline.label', default: 'ProfilePipeline'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'profilePipeline.label', default: 'ProfilePipeline'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
