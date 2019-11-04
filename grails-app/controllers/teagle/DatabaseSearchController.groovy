package teagle

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.*

class DatabaseSearchController {

    DatabaseSearchService databaseSearchService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond databaseSearchService.list(params), model:[databaseSearchCount: databaseSearchService.count()]
    }

    def show(Long id) {
        respond databaseSearchService.get(id)
    }

    def create() {
        respond new DatabaseSearch(params)
    }

    def save(DatabaseSearch databaseSearch) {
        if (databaseSearch == null) {
            notFound()
            return
        }

        try {
            databaseSearchService.save(databaseSearch)
        } catch (ValidationException e) {
            respond databaseSearch.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'databaseSearch.label', default: 'DatabaseSearch'), databaseSearch.id])
                redirect databaseSearch
            }
            '*' { respond databaseSearch, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond databaseSearchService.get(id)
    }

    def update(DatabaseSearch databaseSearch) {
        if (databaseSearch == null) {
            notFound()
            return
        }

        try {
            databaseSearchService.save(databaseSearch)
        } catch (ValidationException e) {
            respond databaseSearch.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'databaseSearch.label', default: 'DatabaseSearch'), databaseSearch.id])
                redirect databaseSearch
            }
            '*'{ respond databaseSearch, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        databaseSearchService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'databaseSearch.label', default: 'DatabaseSearch'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'databaseSearch.label', default: 'DatabaseSearch'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
