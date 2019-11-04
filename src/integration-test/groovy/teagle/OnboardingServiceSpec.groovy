package teagle

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class OnboardingServiceSpec extends Specification {

    OnboardingService onboardingService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Onboarding(...).save(flush: true, failOnError: true)
        //new Onboarding(...).save(flush: true, failOnError: true)
        //Onboarding onboarding = new Onboarding(...).save(flush: true, failOnError: true)
        //new Onboarding(...).save(flush: true, failOnError: true)
        //new Onboarding(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //onboarding.id
    }

    void "test get"() {
        setupData()

        expect:
        onboardingService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Onboarding> onboardingList = onboardingService.list(max: 2, offset: 2)

        then:
        onboardingList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        onboardingService.count() == 5
    }

    void "test delete"() {
        Long onboardingId = setupData()

        expect:
        onboardingService.count() == 5

        when:
        onboardingService.delete(onboardingId)
        sessionFactory.currentSession.flush()

        then:
        onboardingService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Onboarding onboarding = new Onboarding()
        onboardingService.save(onboarding)

        then:
        onboarding.id != null
    }
}
