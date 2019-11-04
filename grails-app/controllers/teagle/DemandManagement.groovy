package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class DemandManagementController {

    DemandManagementService demandManagementService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DemandManagementService.list(params), model:[DemandManagementCount: demandManagementService.count()]
    }

    def show(Long id) {
        respond DemandManagementService.get(id)
    }

    def create() {
        respond new DemandManagement(params)
    }

    def save(DemandManagement DemandManagement) {
        if (DemandManagement == null) {
            notFound()
            return
        }

        try {
            DemandManagementService.save(DemandManagement)
        } catch (ValidationException e) {
            respond DemandManagement.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'DemandManagement.label', default: 'DemandManagement'), DemandManagement.id])
                redirect DemandManagement
            }
            '*' { respond DemandManagement, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond DemandManagementService.get(id)
    }

    def update(DemandManagement DemandManagement) {
        if (DemandManagement == null) {
            notFound()
            return
        }

        try {
            DemandManagementService.save(DemandManagement)
        } catch (ValidationException e) {
            respond DemandManagement.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DemandManagement.label', default: 'DemandManagement'), DemandManagement.id])
                redirect DemandManagement
            }
            '*'{ respond DemandManagement, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        DemandManagementService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DemandManagement.label', default: 'DemandManagement'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'DemandManagement.label', default: 'DemandManagement'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
