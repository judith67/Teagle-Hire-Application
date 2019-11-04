package teagle

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.*

class JDviewController {

    JDviewService JDviewService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond JDviewService.list(params), model:[JDviewCount: JDviewService.count()]
    }

    def show(Long id) {
        respond JDviewService.get(id)
    }

    def create() {
        respond new JDview(params)
    }

    def save(JDview JDview) {
        if (JDview == null) {
            notFound()
            return
        }

        try {
            JDviewService.save(JDview)
        } catch (ValidationException e) {
            respond JDview.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'JDview.label', default: 'JDview'), JDview.id])
                redirect JDview
            }
            '*' { respond JDview, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond JDviewService.get(id)
    }

    def update(JDview JDview) {
        if (JDview == null) {
            notFound()
            return
        }

        try {
            JDviewService.save(JDview)
        } catch (ValidationException e) {
            respond JDview.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'JDview.label', default: 'JDview'), JDview.id])
                redirect JDview
            }
            '*'{ respond JDview, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        JDviewService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'JDview.label', default: 'JDview'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'JDview.label', default: 'JDview'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
