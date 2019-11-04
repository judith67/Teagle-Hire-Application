package teagle

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class CandidateProfileServiceSpec extends Specification {

    CandidateProfileService candidateProfileService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new CandidateProfile(...).save(flush: true, failOnError: true)
        //new CandidateProfile(...).save(flush: true, failOnError: true)
        //CandidateProfile candidateProfile = new CandidateProfile(...).save(flush: true, failOnError: true)
        //new CandidateProfile(...).save(flush: true, failOnError: true)
        //new CandidateProfile(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //candidateProfile.id
    }

    void "test get"() {
        setupData()

        expect:
        candidateProfileService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<CandidateProfile> candidateProfileList = candidateProfileService.list(max: 2, offset: 2)

        then:
        candidateProfileList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        candidateProfileService.count() == 5
    }

    void "test delete"() {
        Long candidateProfileId = setupData()

        expect:
        candidateProfileService.count() == 5

        when:
        candidateProfileService.delete(candidateProfileId)
        sessionFactory.currentSession.flush()

        then:
        candidateProfileService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        CandidateProfile candidateProfile = new CandidateProfile()
        candidateProfileService.save(candidateProfile)

        then:
        candidateProfile.id != null
    }
}
