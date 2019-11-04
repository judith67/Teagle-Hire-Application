package teagle

import grails.gorm.services.Service

@Service(LeaderDashboard)
interface LeaderDashboardService {

    LeaderDashboard get(Serializable id)

    List<LeaderDashboard> list(Map args)

    Long count()

    void delete(Serializable id)

    LeaderDashboard save(LeaderDashboard leaderDashboard)

}