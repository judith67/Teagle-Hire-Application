package teagle

import grails.gorm.services.Service

@Service(CareerPage)
interface CareerPageService {

    CareerPage get(Serializable id)

    List<CareerPage> list(Map args)

    Long count()

    void delete(Serializable id)

    CareerPage save(CareerPage careerPage)

}