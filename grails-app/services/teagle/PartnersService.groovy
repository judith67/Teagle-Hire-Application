package teagle

import grails.gorm.services.Service

@Service(Partners)
interface PartnersService {

    Partners get(Serializable id)

    List<Partners> list(Map args)

    Long count()

    void delete(Serializable id)

    Partners save(Partners partners)

}