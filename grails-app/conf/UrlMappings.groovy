class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?(.$format)?" {
			constraints {
				// apply constraints here
			}
		}

		"/"(view: "/index")
		"500"(view: '/error')

		"/popTemplate/addEmployees"(view: "/popTemplates/addEmployees")
//		"/popTemplate/addEmployees"(controller: employee, action: create)
	}
}
