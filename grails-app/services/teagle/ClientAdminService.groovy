package teagle

import grails.gorm.services.Service

@Service(ClientAdmin)
interface ClientAdminService {

    ClientAdmin get(Serializable id)

    List<ClientAdmin> list(Map args)

    Long count()

    void delete(Serializable id)

    ClientAdmin save(ClientAdmin clientAdmin)

}