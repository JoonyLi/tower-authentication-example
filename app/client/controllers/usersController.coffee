class App.UsersController extends Tower.Controller
  @scope 'all'
  
  facebookCountBinding: 'all.length'

  # or this:
  # facebookCount: Ember.computed(->
  #   @get('all').count()
  # ).property('all.@each')