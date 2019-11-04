package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import teagle.ClientAdmin

class ClientAdminController {

    ClientAdminService clientAdminService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond clientAdminService.list(params), model:[clientAdminCount: clientAdminService.count()]
    }

    def show(Long id) {
        respond clientAdminService.get(id)
    }

    def create() {
        respond new ClientAdmin(params)
    }

    def save(ClientAdmin clientAdmin) {
        if (clientAdmin == null) {
            notFound()
            return
        }

        try {
            clientAdminService.save(clientAdmin)
        } catch (ValidationException e) {
            respond clientAdmin.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'clientAdmin.label', default: 'ClientAdmin'), clientAdmin.id])
                redirect clientAdmin
            }
            '*' { respond clientAdmin, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond clientAdminService.get(id)
    }

    def update(ClientAdmin clientAdmin) {
        if (clientAdmin == null) {
            notFound()
            return
        }

        try {
            clientAdminService.save(clientAdmin)
        } catch (ValidationException e) {
            respond clientAdmin.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'clientAdmin.label', default: 'ClientAdmin'), clientAdmin.id])
                redirect clientAdmin
            }
            '*'{ respond clientAdmin, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        clientAdminService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'clientAdmin.label', default: 'ClientAdmin'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'clientAdmin.label', default: 'ClientAdmin'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
