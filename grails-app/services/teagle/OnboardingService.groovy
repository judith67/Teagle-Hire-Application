package teagle

import grails.gorm.services.Service

@Service(Onboarding)
interface OnboardingService {

    Onboarding get(Serializable id)

    List<Onboarding> list(Map args)

    Long count()

    void delete(Serializable id)

    Onboarding save(Onboarding onboarding)

}