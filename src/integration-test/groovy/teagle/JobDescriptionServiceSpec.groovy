package teagle

import grails.gorm.transactions.Rollback
import grails.testing.mixin.integration.Integration
import org.hibernate.SessionFactory
import spock.lang.Specification

@Integration
@Rollback
class JobDescriptionServiceSpec extends Specification {

    JobDescriptionService jobDescriptionService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new JobDescription(...).save(flush: true, failOnError: true)
        //new JobDescription(...).save(flush: true, failOnError: true)
        //JobDescription jobDescription = new JobDescription(...).save(flush: true, failOnError: true)
        //new JobDescription(...).save(flush: true, failOnError: true)
        //new JobDescription(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //jobDescription.id
    }

    void "test get"() {
        setupData()

        expect:
        jobDescriptionService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<JobDescription> jobDescriptionList = jobDescriptionService.list(max: 2, offset: 2)

        then:
        jobDescriptionList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        jobDescriptionService.count() == 5
    }

    void "test delete"() {
        Long jobDescriptionId = setupData()

        expect:
        jobDescriptionService.count() == 5

        when:
        jobDescriptionService.delete(jobDescriptionId)
        sessionFactory.currentSession.flush()

        then:
        jobDescriptionService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        JobDescription jobDescription = new JobDescription()
        jobDescriptionService.save(jobDescription)

        then:
        jobDescription.id != null
    }
}
