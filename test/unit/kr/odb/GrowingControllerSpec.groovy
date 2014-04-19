package kr.odb



import grails.test.mixin.*
import spock.lang.*

@TestFor(GrowingController)
@Mock(Growing)
class GrowingControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.growingInstanceList
            model.growingInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.growingInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def growing = new Growing()
            growing.validate()
            controller.save(growing)

        then:"The create view is rendered again with the correct model"
            model.growingInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            growing = new Growing(params)

            controller.save(growing)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/growing/show/1'
            controller.flash.message != null
            Growing.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def growing = new Growing(params)
            controller.show(growing)

        then:"A model is populated containing the domain instance"
            model.growingInstance == growing
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def growing = new Growing(params)
            controller.edit(growing)

        then:"A model is populated containing the domain instance"
            model.growingInstance == growing
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/growing/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def growing = new Growing()
            growing.validate()
            controller.update(growing)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.growingInstance == growing

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            growing = new Growing(params).save(flush: true)
            controller.update(growing)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/growing/show/$growing.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/growing/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def growing = new Growing(params).save(flush: true)

        then:"It exists"
            Growing.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(growing)

        then:"The instance is deleted"
            Growing.count() == 0
            response.redirectedUrl == '/growing/index'
            flash.message != null
    }
}
