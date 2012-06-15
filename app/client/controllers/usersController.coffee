class App.UsersController extends Tower.Controller
  @scope 'all'

  facebookCount: Ember.computed(->
    @get('all').count()
  ).property('all.@each')

  # or something like this:
  # facebookCountBinding: 'all.length'

  authenticate: ->
    window.open("http://local.host:1597/auth/facebook", "SignIn", "width=780,height=410,toolbar=0,scrollbars=0,status=0,resizable=0,location=0,menuBar=0")

    false
