package teagle

import grails.gorm.services.Service

@Service(Jobs)
interface JobsService {

    Jobs get(Serializable id)

    List<Jobs> list(Map args)

    Long count()

    void delete(Serializable id)

    Jobs save(Jobs jobs)

}