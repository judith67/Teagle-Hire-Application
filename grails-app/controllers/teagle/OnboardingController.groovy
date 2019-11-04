package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class OnboardingController {

    OnboardingService onboardingService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond onboardingService.list(params), model:[onboardingCount: onboardingService.count()]
    }

    def show(Long id) {
        respond onboardingService.get(id)
    }

    def create() {
        respond new Onboarding(params)
    }

    def save(Onboarding onboarding) {
        if (onboarding == null) {
            notFound()
            return
        }

        try {
            onboardingService.save(onboarding)
        } catch (ValidationException e) {
            respond onboarding.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'onboarding.label', default: 'Onboarding'), onboarding.id])
                redirect onboarding
            }
            '*' { respond onboarding, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond onboardingService.get(id)
    }

    def update(Onboarding onboarding) {
        if (onboarding == null) {
            notFound()
            return
        }

        try {
            onboardingService.save(onboarding)
        } catch (ValidationException e) {
            respond onboarding.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'onboarding.label', default: 'Onboarding'), onboarding.id])
                redirect onboarding
            }
            '*'{ respond onboarding, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        onboardingService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'onboarding.label', default: 'Onboarding'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'onboarding.label', default: 'Onboarding'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
