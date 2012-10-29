window.Sparkl =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ( data ) -> 
    window.sparks = new Sparkl.Collections.Sparks()
    new Sparkl.Routers.Sparks(data)
    Backbone.history.start()


class Sparkl.Routers.Sparks extends Backbone.Router
    routes: {
        "": "index"
    }

    initialize: ( data ) ->

    index: ->
        sparks.fetch(
            success: ->     
                view = new Sparkl.Views.AppView()
                view.render()
            add: true
        )

class Sparkl.Views.AppView extends Backbone.View
    id: "some-id"
    #el: "wrapper"

    initialize: () ->
        _.bindAll( this, 'render')

    render: () ->
        console.log sparks
        counter = 0;
        sparks.each ( model ) ->
            console.log model
            view = new Sparkl.Views.SparkView( {model: model} )
            view.render()


class Sparkl.Views.SparkView extends Backbone.View
    events: {
        'load img': 'onImageLoad'
    }

    className: "spark"

    initialize: () ->
        _.bindAll(this, 'render', 'onImageLoad')

    render: (grid_number) ->
        template = _.template $("#spark-template").html(), this.model.toJSON()
        $(@el).html template
        $(@el).find('img').on('load', this.onImageLoad);
        $("#wrapper").append($(@el))
        return this

    onImageLoad: () ->
        $(@el).fadeIn()


class Sparkl.Models.Spark extends Backbone.Model
    
class Sparkl.Collections.Sparks extends Backbone.Collection
    model: Sparkl.Models.Spark
    url: "/sparks.json"
    initialize: ( models ) ->

