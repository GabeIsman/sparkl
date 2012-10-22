class Sparkl.Routers.Sparks extends Backbone.Router
    routes: {
        "": "index"
    }

    initialize: (data) ->
        console.log(data)
        this.navigate("index")

    index: ->
        alert "hello from router"

