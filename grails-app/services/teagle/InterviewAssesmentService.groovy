package teagle

import grails.gorm.services.Service

@Service(InterviewAssesment)
interface InterviewAssesmentService {

    InterviewAssesment get(Serializable id)

    List<InterviewAssesment> list(Map args)

    Long count()

    void delete(Serializable id)

    InterviewAssesment save(InterviewAssesment interviewAssesment)

}