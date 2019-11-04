package teagle

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ClientAdminServiceSpec extends Specification {

    ClientAdminService clientAdminService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ClientAdmin(...).save(flush: true, failOnError: true)
        //new ClientAdmin(...).save(flush: true, failOnError: true)
        //ClientAdmin clientAdmin = new ClientAdmin(...).save(flush: true, failOnError: true)
        //new ClientAdmin(...).save(flush: true, failOnError: true)
        //new ClientAdmin(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //clientAdmin.id
    }

    void "test get"() {
        setupData()

        expect:
        clientAdminService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ClientAdmin> clientAdminList = clientAdminService.list(max: 2, offset: 2)

        then:
        clientAdminList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        clientAdminService.count() == 5
    }

    void "test delete"() {
        Long clientAdminId = setupData()

        expect:
        clientAdminService.count() == 5

        when:
        clientAdminService.delete(clientAdminId)
        sessionFactory.currentSession.flush()

        then:
        clientAdminService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ClientAdmin clientAdmin = new ClientAdmin()
        clientAdminService.save(clientAdmin)

        then:
        clientAdmin.id != null
    }
}
