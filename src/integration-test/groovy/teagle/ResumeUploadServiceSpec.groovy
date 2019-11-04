package teagle

import grails.gorm.transactions.Rollback
import grails.testing.mixin.integration.Integration
import org.hibernate.SessionFactory
import spock.lang.Specification

@Integration
@Rollback
class ResumeUploadServiceSpec extends Specification {

    ResumeUploadService resumeUploadService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ResumeUpload(...).save(flush: true, failOnError: true)
        //new ResumeUpload(...).save(flush: true, failOnError: true)
        //ResumeUpload resumeUpload = new ResumeUpload(...).save(flush: true, failOnError: true)
        //new ResumeUpload(...).save(flush: true, failOnError: true)
        //new ResumeUpload(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //resumeUpload.id
    }

    void "test get"() {
        setupData()

        expect:
        resumeUploadService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ResumeUpload> resumeUploadList = resumeUploadService.list(max: 2, offset: 2)

        then:
        resumeUploadList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        resumeUploadService.count() == 5
    }

    void "test delete"() {
        Long resumeUploadId = setupData()

        expect:
        resumeUploadService.count() == 5

        when:
        resumeUploadService.delete(resumeUploadId)
        sessionFactory.currentSession.flush()

        then:
        resumeUploadService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ResumeUpload resumeUpload = new ResumeUpload()
        resumeUploadService.save(resumeUpload)

        then:
        resumeUpload.id != null
    }
}
