package practica_13


import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(DepartamentoInterceptor)
class DepartamentoInterceptorSpec extends Specification {

    def setup() {
    }

    def cleanup() {

    }

    void "Test departamento interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"departamento")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
