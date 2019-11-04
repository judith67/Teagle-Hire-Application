package teagle

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class DemandAllocationServiceSpec extends Specification {

    DemandAllocationService demandAllocationService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new DemandAllocation(...).save(flush: true, failOnError: true)
        //new DemandAllocation(...).save(flush: true, failOnError: true)
        //DemandAllocation demandAllocation = new DemandAllocation(...).save(flush: true, failOnError: true)
        //new DemandAllocation(...).save(flush: true, failOnError: true)
        //new DemandAllocation(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //demandAllocation.id
    }

    void "test get"() {
        setupData()

        expect:
        demandAllocationService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<DemandAllocation> demandAllocationList = demandAllocationService.list(max: 2, offset: 2)

        then:
        demandAllocationList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        demandAllocationService.count() == 5
    }

    void "test delete"() {
        Long demandAllocationId = setupData()

        expect:
        demandAllocationService.count() == 5

        when:
        demandAllocationService.delete(demandAllocationId)
        sessionFactory.currentSession.flush()

        then:
        demandAllocationService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        DemandAllocation demandAllocation = new DemandAllocation()
        demandAllocationService.save(demandAllocation)

        then:
        demandAllocation.id != null
    }
}
