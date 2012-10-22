class Sparkl.Views.SparksIndex extends Backbone.View

  render: ->
    alert "render"
    this.$el.html(JST['sparks/index']({ sparks: this.collection }))
    return this

  template: JST['sparks/index']
