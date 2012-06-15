class App.SessionsController extends Tower.Controller
  # Called before authentication
  new: ->

  # Called back after authentication
  create: ->
    App.User.findOrCreateFromSession @request.authHash, (error, user) =>
      @render 'shared/_close'

  destroy: ->
    @request.logout()
