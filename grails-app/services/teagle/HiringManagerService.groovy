package teagle

import grails.gorm.services.Service

@Service(HiringManager)
interface HiringManagerService {

    HiringManager get(Serializable id)

    List<HiringManager> list(Map args)

    Long count()

    void delete(Serializable id)

    HiringManager save(HiringManager hiringManager)

}