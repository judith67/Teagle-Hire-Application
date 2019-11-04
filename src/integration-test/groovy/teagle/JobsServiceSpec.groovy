package teagle

import grails.gorm.transactions.Rollback
import grails.testing.mixin.integration.Integration
import org.hibernate.SessionFactory
import spock.lang.Specification

@Integration
@Rollback
class JobsServiceSpec extends Specification {

    JobsService jobsService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Jobs(...).save(flush: true, failOnError: true)
        //new Jobs(...).save(flush: true, failOnError: true)
        //Jobs jobs = new Jobs(...).save(flush: true, failOnError: true)
        //new Jobs(...).save(flush: true, failOnError: true)
        //new Jobs(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //jobs.id
    }

    void "test get"() {
        setupData()

        expect:
        jobsService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Jobs> jobsList = jobsService.list(max: 2, offset: 2)

        then:
        jobsList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        jobsService.count() == 5
    }

    void "test delete"() {
        Long jobsId = setupData()

        expect:
        jobsService.count() == 5

        when:
        jobsService.delete(jobsId)
        sessionFactory.currentSession.flush()

        then:
        jobsService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Jobs jobs = new Jobs()
        jobsService.save(jobs)

        then:
        jobs.id != null
    }
}
