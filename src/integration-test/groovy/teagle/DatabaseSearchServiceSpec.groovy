package teagle

import grails.gorm.transactions.Rollback
import grails.testing.mixin.integration.Integration
import org.hibernate.SessionFactory
import spock.lang.Specification

@Integration
@Rollback
class DatabaseSearchServiceSpec extends Specification {

    DatabaseSearchService databaseSearchService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new DatabaseSearch(...).save(flush: true, failOnError: true)
        //new DatabaseSearch(...).save(flush: true, failOnError: true)
        //DatabaseSearch databaseSearch = new DatabaseSearch(...).save(flush: true, failOnError: true)
        //new DatabaseSearch(...).save(flush: true, failOnError: true)
        //new DatabaseSearch(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //databaseSearch.id
    }

    void "test get"() {
        setupData()

        expect:
        databaseSearchService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<DatabaseSearch> databaseSearchList = databaseSearchService.list(max: 2, offset: 2)

        then:
        databaseSearchList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        databaseSearchService.count() == 5
    }

    void "test delete"() {
        Long databaseSearchId = setupData()

        expect:
        databaseSearchService.count() == 5

        when:
        databaseSearchService.delete(databaseSearchId)
        sessionFactory.currentSession.flush()

        then:
        databaseSearchService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        DatabaseSearch databaseSearch = new DatabaseSearch()
        databaseSearchService.save(databaseSearch)

        then:
        databaseSearch.id != null
    }
}
