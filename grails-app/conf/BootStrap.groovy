import kr.odb.OdbDataGetterService

import org.springframework.web.context.WebApplicationContext
import org.springframework.web.context.support.WebApplicationContextUtils

class BootStrap {

    def init = { servletContext ->
		WebApplicationContext appCtx =	WebApplicationContextUtils.getWebApplicationContext(servletContext)
		OdbDataGetterService service = appCtx.getBean('odbDataGetterService')
		environments {
			production {
				service.saveOdbData(Date.parse('yyyyMMdd', '20100101'))
			}
			development {
				service.saveOdbData(Date.parse('yyyyMMdd', '20140401'))
			}
		}
    }
    def destroy = {
    }
}
