class App.UsersController extends Tower.Controller
  @scope 'all'

  facebookCount: Ember.computed(->
    App.User.where(facebookId: '!=': null).count()
  ).property('all.@each')

  twitterCount: Ember.computed(->
    App.User.where(twitterId: '!=': null).count()
  ).property('all.@each')

  githubCount: Ember.computed(->
    App.User.where(githubId: '!=': null).count()
  ).property('all.@each')

  linkedinCount: Ember.computed(->
    App.User.where(linkedinId: '!=': null).count()
  ).property('all.@each')

  googleCount: Ember.computed(->
    App.User.where(googleId: '!=': null).count()
  ).property('all.@each')

  # or something like this:
  # facebookCountBinding: 'all.length'

  facebookAuth: (args) ->
    @auth('facebook')

  twitterAuth: (args) ->
    @auth('twitter')

  githubAuth: (args) ->
    @auth('github')

  linkedinAuth: (args) ->
    @auth('linkedin')

  googleAuth: (args) ->
    @auth('google')

  auth: (name) ->
    window.open("http://local.host:1597/auth/#{name}", "SignIn", "width=780,height=410,toolbar=0,scrollbars=0,status=0,resizable=0,location=0,menuBar=0")
    false