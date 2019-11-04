package teagle

import grails.gorm.services.Service

@Service(ResumeUpload)
interface ResumeUploadService {

    ResumeUpload get(Serializable id)

    List<ResumeUpload> list(Map args)

    Long count()

    void delete(Serializable id)

    ResumeUpload save(ResumeUpload resumeUpload)

}