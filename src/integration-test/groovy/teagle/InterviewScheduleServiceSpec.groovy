package teagle

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class InterviewScheduleServiceSpec extends Specification {

    InterviewScheduleService interviewScheduleService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new InterviewSchedule(...).save(flush: true, failOnError: true)
        //new InterviewSchedule(...).save(flush: true, failOnError: true)
        //InterviewSchedule interviewSchedule = new InterviewSchedule(...).save(flush: true, failOnError: true)
        //new InterviewSchedule(...).save(flush: true, failOnError: true)
        //new InterviewSchedule(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //interviewSchedule.id
    }

    void "test get"() {
        setupData()

        expect:
        interviewScheduleService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<InterviewSchedule> interviewScheduleList = interviewScheduleService.list(max: 2, offset: 2)

        then:
        interviewScheduleList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        interviewScheduleService.count() == 5
    }

    void "test delete"() {
        Long interviewScheduleId = setupData()

        expect:
        interviewScheduleService.count() == 5

        when:
        interviewScheduleService.delete(interviewScheduleId)
        sessionFactory.currentSession.flush()

        then:
        interviewScheduleService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        InterviewSchedule interviewSchedule = new InterviewSchedule()
        interviewScheduleService.save(interviewSchedule)

        then:
        interviewSchedule.id != null
    }
}
