class Sparkl.Models.Spark extends Backbone.Model
    url: '/sparks'
    
    initialize: () ->

    render: () ->
        template = _.template $("#spark-template").html(), {}
        console.log "template: #{template}"
        $('body').html $(@el).html template
        console.log "this: #{$(this.el)}"
        return this
