package teagle

import grails.gorm.services.Service

@Service(InterviewSchedule)
interface InterviewScheduleService {

    InterviewSchedule get(Serializable id)

    List<InterviewSchedule> list(Map args)

    Long count()

    void delete(Serializable id)

    InterviewSchedule save(InterviewSchedule interviewSchedule)

}