package kr.odb



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(BreadController)
class BreadControllerTests {

    void testSomething() {
		println "something"
        controller.getProperties().each {println it}
    }
}
