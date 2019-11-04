package teagle

class ClientAdmin {
    String name
    String useremail
    long userphone
    String usercountry
    String usercity
    String usercompany
    String partnertype
    String rights
    String userroles
    String username
    String userpass

    static constraints = {
      username(unique:true)
    }
}
