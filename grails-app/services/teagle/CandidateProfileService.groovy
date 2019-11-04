package teagle

import grails.gorm.services.Service

@Service(CandidateProfile)
interface CandidateProfileService {

    CandidateProfile get(Serializable id)

    List<CandidateProfile> list(Map args)

    Long count()

    void delete(Serializable id)

    CandidateProfile save(CandidateProfile candidateProfile)

}