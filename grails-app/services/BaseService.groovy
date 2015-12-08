import grails.transaction.Transactional

@Transactional
class BaseService {

	protected getCurrentDomain () {}

	def getListByActive() {
		def domain = getCurrentDomain()
		def list = domain.list(active: true)
		[instanceList: list]
	}
}
