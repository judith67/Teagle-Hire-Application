package teagle

import grails.gorm.services.Service

@Service(JDview)
interface JDviewService {

    JDview get(Serializable id)

    List<JDview> list(Map args)

    Long count()

    void delete(Serializable id)

    JDview save(JDview JDview)

}