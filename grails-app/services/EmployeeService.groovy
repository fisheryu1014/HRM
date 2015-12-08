import grails.transaction.Transactional

@Transactional
class EmployeeService extends BaseService {

	@Override
	protected getCurrentDomain() {
		Employees
	}
}
