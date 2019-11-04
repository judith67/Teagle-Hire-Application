package teagle

import grails.gorm.services.Service

@Service(DemandManagement)
interface DemandManagementService {

    DemandManagement get(Serializable id)

    List<DemandManagement> list(Map args)

    Long count()

    void delete(Serializable id)

    DemandManagement save(DemandManagement demandManagement)

}
