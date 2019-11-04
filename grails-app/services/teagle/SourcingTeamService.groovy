package teagle

import grails.gorm.services.Service

@Service(SourcingTeam)
interface SourcingTeamService {

    SourcingTeam get(Serializable id)

    List<SourcingTeam> list(Map args)

    Long count()

    void delete(Serializable id)

    SourcingTeam save(SourcingTeam sourcingTeam)

}