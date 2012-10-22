class Sparkl.Routers.Sparks extends Backbone.Router
    routes: {
        "": "index"
    }

    initialize: (data) ->
        console.log(data)

        this.navigate("index")

    index: ->
        view = new Sparkl.Views.SparksIndex({ collection: Sparkl.sparks })
        $('#container').html(view.render().$el)

