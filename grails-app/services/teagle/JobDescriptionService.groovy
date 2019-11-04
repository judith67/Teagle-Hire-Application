package teagle

import grails.gorm.services.Service

@Service(JobDescription)
interface JobDescriptionService {

    JobDescription get(Serializable id)

    List<JobDescription> list(Map args)

    Long count()

    void delete(Serializable id)

    JobDescription save(JobDescription jobDescription)

}