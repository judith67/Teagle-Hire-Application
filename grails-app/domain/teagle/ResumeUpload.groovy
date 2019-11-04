package teagle

class ResumeUpload {
    String candname
    String email
    //String latestroles
    long phone
    //String latestcompanies
    String city
    String state
    int year
    int month
    long aadhaar
    String pan
    String interest
    String resumetitle
    int np
    int rating
    String resumestatus
    String relocation
    //String gender
    // String skillratings
    // String locations
    // String companies
    // String education
    // String stints
    // String industries
    // String functions
    // String personaldetails
    // Date updatedate
    // Date updatedatems
    // String personid

      static constraints = {
        email unique:true
        phone phoneNumber:true
    }
    static mapping = {
    }
    static belongsTo = [jobDescription:JobDescription]
}
