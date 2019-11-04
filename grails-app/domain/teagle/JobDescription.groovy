package teagle

class JobDescription {

    String title
    String billable
    String function
    String jdtext
    int nopos
    String projectname
    Float exp
    String postype
    String jobstatus
    String joblevel
    String roles
    String jobtitle
    String qualification
    int duration
    String country
    String city
    int salary
    int billing
    String client
    ResumeUpload resumes

    static constraints = {
      title blank: false
      resumes(nullable:true)
    }
}
