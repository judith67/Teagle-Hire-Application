package teagle

import grails.gorm.transactions.Rollback
import grails.testing.mixin.integration.Integration
import org.hibernate.SessionFactory
import spock.lang.Specification

@Integration
@Rollback
class InterviewAssesmentServiceSpec extends Specification {

    InterviewAssesmentService interviewAssesmentService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new InterviewAssesment(...).save(flush: true, failOnError: true)
        //new InterviewAssesment(...).save(flush: true, failOnError: true)
        //InterviewAssesment interviewAssesment = new InterviewAssesment(...).save(flush: true, failOnError: true)
        //new InterviewAssesment(...).save(flush: true, failOnError: true)
        //new InterviewAssesment(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //interviewAssesment.id
    }

    void "test get"() {
        setupData()

        expect:
        interviewAssesmentService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<InterviewAssesment> interviewAssesmentList = interviewAssesmentService.list(max: 2, offset: 2)

        then:
        interviewAssesmentList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        interviewAssesmentService.count() == 5
    }

    void "test delete"() {
        Long interviewAssesmentId = setupData()

        expect:
        interviewAssesmentService.count() == 5

        when:
        interviewAssesmentService.delete(interviewAssesmentId)
        sessionFactory.currentSession.flush()

        then:
        interviewAssesmentService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        InterviewAssesment interviewAssesment = new InterviewAssesment()
        interviewAssesmentService.save(interviewAssesment)

        then:
        interviewAssesment.id != null
    }
}
