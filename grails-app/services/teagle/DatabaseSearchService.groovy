package teagle

import grails.gorm.services.Service

@Service(DatabaseSearch)
interface DatabaseSearchService {

    DatabaseSearch get(Serializable id)

    List<DatabaseSearch> list(Map args)

    Long count()

    void delete(Serializable id)

    DatabaseSearch save(DatabaseSearch databaseSearch)

}