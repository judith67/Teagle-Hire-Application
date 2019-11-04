package teagle

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class LeaderDashboardServiceSpec extends Specification {

    LeaderDashboardService leaderDashboardService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new LeaderDashboard(...).save(flush: true, failOnError: true)
        //new LeaderDashboard(...).save(flush: true, failOnError: true)
        //LeaderDashboard leaderDashboard = new LeaderDashboard(...).save(flush: true, failOnError: true)
        //new LeaderDashboard(...).save(flush: true, failOnError: true)
        //new LeaderDashboard(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //leaderDashboard.id
    }

    void "test get"() {
        setupData()

        expect:
        leaderDashboardService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<LeaderDashboard> leaderDashboardList = leaderDashboardService.list(max: 2, offset: 2)

        then:
        leaderDashboardList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        leaderDashboardService.count() == 5
    }

    void "test delete"() {
        Long leaderDashboardId = setupData()

        expect:
        leaderDashboardService.count() == 5

        when:
        leaderDashboardService.delete(leaderDashboardId)
        sessionFactory.currentSession.flush()

        then:
        leaderDashboardService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        LeaderDashboard leaderDashboard = new LeaderDashboard()
        leaderDashboardService.save(leaderDashboard)

        then:
        leaderDashboard.id != null
    }
}
