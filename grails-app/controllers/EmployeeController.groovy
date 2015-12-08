import grails.converters.JSON

class EmployeeController {
	def employeeService

	def index() {}

	def list() {
		render employeeService.getListByActive().instanceList as JSON
	}

	def create() {
		render view: "/popTemplates/addEmployees", model: [employee: null]
	}
}
