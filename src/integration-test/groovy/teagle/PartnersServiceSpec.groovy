package teagle

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class PartnersServiceSpec extends Specification {

    PartnersService partnersService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Partners(...).save(flush: true, failOnError: true)
        //new Partners(...).save(flush: true, failOnError: true)
        //Partners partners = new Partners(...).save(flush: true, failOnError: true)
        //new Partners(...).save(flush: true, failOnError: true)
        //new Partners(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //partners.id
    }

    void "test get"() {
        setupData()

        expect:
        partnersService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Partners> partnersList = partnersService.list(max: 2, offset: 2)

        then:
        partnersList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        partnersService.count() == 5
    }

    void "test delete"() {
        Long partnersId = setupData()

        expect:
        partnersService.count() == 5

        when:
        partnersService.delete(partnersId)
        sessionFactory.currentSession.flush()

        then:
        partnersService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Partners partners = new Partners()
        partnersService.save(partners)

        then:
        partners.id != null
    }
}
