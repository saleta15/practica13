package practica_13


import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(ContactoInterceptor)
class ContactoInterceptorSpec extends Specification {

    def setup() {
    }

    def cleanup() {

    }

    void "Test contacto interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"contacto")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
