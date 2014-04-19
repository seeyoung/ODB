class UrlMappings {

	static mappings = {

		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		"/$page"(
			controller: "base", action: "goGsp"
		)
		"/"(view:"/index")
		"500"(view:'/error')
		"/about"(controller:"about")
	}
}
