package teagle

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class CandidateProfileController {

    CandidateProfileService candidateProfileService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond candidateProfileService.list(params), model:[candidateProfileCount: candidateProfileService.count()]
    }

    def show(Long id) {
        respond candidateProfileService.get(id)
    }

    def create() {
        respond new CandidateProfile(params)
    }

    def save(CandidateProfile candidateProfile) {
        if (candidateProfile == null) {
            notFound()
            return
        }

        try {
            candidateProfileService.save(candidateProfile)
        } catch (ValidationException e) {
            respond candidateProfile.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'candidateProfile.label', default: 'CandidateProfile'), candidateProfile.id])
                redirect candidateProfile
            }
            '*' { respond candidateProfile, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond candidateProfileService.get(id)
    }

    def update(CandidateProfile candidateProfile) {
        if (candidateProfile == null) {
            notFound()
            return
        }

        try {
            candidateProfileService.save(candidateProfile)
        } catch (ValidationException e) {
            respond candidateProfile.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'candidateProfile.label', default: 'CandidateProfile'), candidateProfile.id])
                redirect candidateProfile
            }
            '*'{ respond candidateProfile, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        candidateProfileService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'candidateProfile.label', default: 'CandidateProfile'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'candidateProfile.label', default: 'CandidateProfile'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
