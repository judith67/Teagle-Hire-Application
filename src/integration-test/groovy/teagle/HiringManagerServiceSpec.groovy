package teagle

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class HiringManagerServiceSpec extends Specification {

    HiringManagerService hiringManagerService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new HiringManager(...).save(flush: true, failOnError: true)
        //new HiringManager(...).save(flush: true, failOnError: true)
        //HiringManager hiringManager = new HiringManager(...).save(flush: true, failOnError: true)
        //new HiringManager(...).save(flush: true, failOnError: true)
        //new HiringManager(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //hiringManager.id
    }

    void "test get"() {
        setupData()

        expect:
        hiringManagerService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<HiringManager> hiringManagerList = hiringManagerService.list(max: 2, offset: 2)

        then:
        hiringManagerList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        hiringManagerService.count() == 5
    }

    void "test delete"() {
        Long hiringManagerId = setupData()

        expect:
        hiringManagerService.count() == 5

        when:
        hiringManagerService.delete(hiringManagerId)
        sessionFactory.currentSession.flush()

        then:
        hiringManagerService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        HiringManager hiringManager = new HiringManager()
        hiringManagerService.save(hiringManager)

        then:
        hiringManager.id != null
    }
}
