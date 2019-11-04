package teagle

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class EmployeeRefServiceSpec extends Specification {

    EmployeeRefService employeeRefService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new EmployeeRef(...).save(flush: true, failOnError: true)
        //new EmployeeRef(...).save(flush: true, failOnError: true)
        //EmployeeRef employeeRef = new EmployeeRef(...).save(flush: true, failOnError: true)
        //new EmployeeRef(...).save(flush: true, failOnError: true)
        //new EmployeeRef(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //employeeRef.id
    }

    void "test get"() {
        setupData()

        expect:
        employeeRefService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<EmployeeRef> employeeRefList = employeeRefService.list(max: 2, offset: 2)

        then:
        employeeRefList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        employeeRefService.count() == 5
    }

    void "test delete"() {
        Long employeeRefId = setupData()

        expect:
        employeeRefService.count() == 5

        when:
        employeeRefService.delete(employeeRefId)
        sessionFactory.currentSession.flush()

        then:
        employeeRefService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        EmployeeRef employeeRef = new EmployeeRef()
        employeeRefService.save(employeeRef)

        then:
        employeeRef.id != null
    }
}
