package teagle

import grails.gorm.services.Service

@Service(DemandAllocation)
interface DemandAllocationService {

    DemandAllocation get(Serializable id)

    List<DemandAllocation> list(Map args)

    Long count()

    void delete(Serializable id)

    DemandAllocation save(DemandAllocation demandAllocation)

}