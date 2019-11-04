package teagle

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class SourcingTeamServiceSpec extends Specification {

    SourcingTeamService sourcingTeamService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new SourcingTeam(...).save(flush: true, failOnError: true)
        //new SourcingTeam(...).save(flush: true, failOnError: true)
        //SourcingTeam sourcingTeam = new SourcingTeam(...).save(flush: true, failOnError: true)
        //new SourcingTeam(...).save(flush: true, failOnError: true)
        //new SourcingTeam(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //sourcingTeam.id
    }

    void "test get"() {
        setupData()

        expect:
        sourcingTeamService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<SourcingTeam> sourcingTeamList = sourcingTeamService.list(max: 2, offset: 2)

        then:
        sourcingTeamList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        sourcingTeamService.count() == 5
    }

    void "test delete"() {
        Long sourcingTeamId = setupData()

        expect:
        sourcingTeamService.count() == 5

        when:
        sourcingTeamService.delete(sourcingTeamId)
        sessionFactory.currentSession.flush()

        then:
        sourcingTeamService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        SourcingTeam sourcingTeam = new SourcingTeam()
        sourcingTeamService.save(sourcingTeam)

        then:
        sourcingTeam.id != null
    }
}
