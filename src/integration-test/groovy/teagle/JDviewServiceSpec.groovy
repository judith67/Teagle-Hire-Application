package teagle

import grails.gorm.transactions.Rollback
import grails.testing.mixin.integration.Integration
import org.hibernate.SessionFactory
import spock.lang.Specification

@Integration
@Rollback
class JDviewServiceSpec extends Specification {

    JDviewService JDviewService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new JDview(...).save(flush: true, failOnError: true)
        //new JDview(...).save(flush: true, failOnError: true)
        //JDview JDview = new JDview(...).save(flush: true, failOnError: true)
        //new JDview(...).save(flush: true, failOnError: true)
        //new JDview(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //JDview.id
    }

    void "test get"() {
        setupData()

        expect:
        JDviewService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<JDview> JDviewList = JDviewService.list(max: 2, offset: 2)

        then:
        JDviewList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        JDviewService.count() == 5
    }

    void "test delete"() {
        Long JDviewId = setupData()

        expect:
        JDviewService.count() == 5

        when:
        JDviewService.delete(JDviewId)
        sessionFactory.currentSession.flush()

        then:
        JDviewService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        JDview JDview = new JDview()
        JDviewService.save(JDview)

        then:
        JDview.id != null
    }
}
