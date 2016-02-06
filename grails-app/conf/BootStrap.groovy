import kr.odb.OdbDataGetterService
import kr.odb.Role
import kr.odb.User
import kr.odb.UserRole

import org.springframework.web.context.WebApplicationContext
import org.springframework.web.context.support.WebApplicationContextUtils

class BootStrap {

    def init = { servletContext ->
		WebApplicationContext appCtx =	WebApplicationContextUtils.getWebApplicationContext(servletContext)
		OdbDataGetterService service = appCtx.getBean('odbDataGetterService')
		environments {
			production {
				//service.saveOdbData(Date.parse('yyyyMMdd', '20100101'))
			}
			development {
				//service.saveOdbData(Date.parse('yyyyMMdd', '20140401'))
			}
		}
		
//		def adminRole = new Role('ROLE_ADMIN').save()
//		def userRole = new Role('ROLE_USER').save()
//  
//		def testUser = new User('admin', 'o1d1b1**').save()
//  
//		UserRole.create testUser, adminRole, true
    }
    def destroy = {
    }
}
