package teagle

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/login")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
