package teagle

import grails.gorm.transactions.Rollback
import grails.testing.mixin.integration.Integration
import org.hibernate.SessionFactory
import spock.lang.Specification

@Integration
@Rollback
class ProfilePipelineServiceSpec extends Specification {

    ProfilePipelineService profilePipelineService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ProfilePipeline(...).save(flush: true, failOnError: true)
        //new ProfilePipeline(...).save(flush: true, failOnError: true)
        //ProfilePipeline profilePipeline = new ProfilePipeline(...).save(flush: true, failOnError: true)
        //new ProfilePipeline(...).save(flush: true, failOnError: true)
        //new ProfilePipeline(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //profilePipeline.id
    }

    void "test get"() {
        setupData()

        expect:
        profilePipelineService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ProfilePipeline> profilePipelineList = profilePipelineService.list(max: 2, offset: 2)

        then:
        profilePipelineList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        profilePipelineService.count() == 5
    }

    void "test delete"() {
        Long profilePipelineId = setupData()

        expect:
        profilePipelineService.count() == 5

        when:
        profilePipelineService.delete(profilePipelineId)
        sessionFactory.currentSession.flush()

        then:
        profilePipelineService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ProfilePipeline profilePipeline = new ProfilePipeline()
        profilePipelineService.save(profilePipeline)

        then:
        profilePipeline.id != null
    }
}
