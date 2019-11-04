package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class DemandAllocationController {

    DemandAllocationService demandAllocationService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond demandAllocationService.list(params), model:[demandAllocationCount: demandAllocationService.count()]
    }

    def show(Long id) {
        respond demandAllocationService.get(id)
    }

    def create() {
        respond new DemandAllocation(params)
    }

    def save(DemandAllocation demandAllocation) {
        if (demandAllocation == null) {
            notFound()
            return
        }

        try {
            demandAllocationService.save(demandAllocation)
        } catch (ValidationException e) {
            respond demandAllocation.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'demandAllocation.label', default: 'DemandAllocation'), demandAllocation.id])
                redirect demandAllocation
            }
            '*' { respond demandAllocation, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond demandAllocationService.get(id)
    }

    def update(DemandAllocation demandAllocation) {
        if (demandAllocation == null) {
            notFound()
            return
        }

        try {
            demandAllocationService.save(demandAllocation)
        } catch (ValidationException e) {
            respond demandAllocation.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'demandAllocation.label', default: 'DemandAllocation'), demandAllocation.id])
                redirect demandAllocation
            }
            '*'{ respond demandAllocation, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        demandAllocationService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'demandAllocation.label', default: 'DemandAllocation'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'demandAllocation.label', default: 'DemandAllocation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
