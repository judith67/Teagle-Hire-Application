package teagle

import grails.gorm.services.Service

@Service(EmployeeRef)
interface EmployeeRefService {

    EmployeeRef get(Serializable id)

    List<EmployeeRef> list(Map args)

    Long count()

    void delete(Serializable id)

    EmployeeRef save(EmployeeRef employeeRef)

}