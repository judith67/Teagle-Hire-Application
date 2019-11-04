package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class DashboardController {

    DashboardService dashboardService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond dashboardService.list(params), model:[dashboardCount: dashboardService.count()]
    }

    def show(Long id) {
        respond dashboardService.get(id)
    }

    def create() {
        respond new Dashboard(params)
    }

    def save(Dashboard dashboard) {
        if (dashboard == null) {
            notFound()
            return
        }

        try {
            dashboardService.save(dashboard)
        } catch (ValidationException e) {
            respond dashboard.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), dashboard.id])
                redirect dashboard
            }
            '*' { respond dashboard, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond dashboardService.get(id)
    }

    def update(Dashboard dashboard) {
        if (dashboard == null) {
            notFound()
            return
        }

        try {
            dashboardService.save(dashboard)
        } catch (ValidationException e) {
            respond dashboard.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), dashboard.id])
                redirect dashboard
            }
            '*'{ respond dashboard, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        dashboardService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
