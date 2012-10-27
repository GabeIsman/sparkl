window.Sparkl =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ( data ) -> 
    sparks = new Sparkl.Collections.Sparks(data)
    console.log sparks
    new Sparkl.Routers.Sparks(data)
    Backbone.history.start()


class Sparkl.Routers.Sparks extends Backbone.Router
    routes: {
        "": "index"
    }

    initialize: ( data ) ->
        console.log(data)

    index: ->
        view = new Sparkl.Views.AppView()
        view.render()


class Sparkl.Views.AppView extends Backbone.View
    id: "some-id"
    #el: "wrapper"

    initialize: () ->
        _.bindAll( this, 'render')

    render: () ->
        Sparkl.sparks.each ( model ) ->
            view = new Sparkl.Views.SparkView( {model: model} )
            view.render();

class Sparkl.Views.SparkView extends Backbone.View
    initialize: () ->
        _.bindAll(this, 'render')

    render: () ->
        template = _.template $("#spark-template").html(), this.model.toJSON
        console.log "template: #{template}"
        $(id).html $(@el).html template
        console.log "this: #{$(this.el)}"
        return this


class Sparkl.Models.Spark extends Backbone.Model
    
class Sparkl.Collections.Sparks extends Backbone.Collection
    model: Sparkl.Models.Spark
    url: "/sparks"
