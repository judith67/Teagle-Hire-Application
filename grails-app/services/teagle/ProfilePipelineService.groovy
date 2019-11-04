package teagle

import grails.gorm.services.Service

@Service(ProfilePipeline)
interface ProfilePipelineService {

    ProfilePipeline get(Serializable id)

    List<ProfilePipeline> list(Map args)

    Long count()

    void delete(Serializable id)

    ProfilePipeline save(ProfilePipeline profilePipeline)

}