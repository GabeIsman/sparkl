window.Sparkl =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: (data) -> 
    sparks = new Sparkl.Collections.Sparks(data)
    new Sparkl.Routers.Sparks(data)
    Backbone.history.start()
    


$(document).ready ->
  
