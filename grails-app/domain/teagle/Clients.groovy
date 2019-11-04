package teagle

class Clients {
    static belongsTo = JobDescription
    JobDescription jobDescription
    String clientname
    static constraints = {
    }
    public String toString(){
      return clientname
    }
}
