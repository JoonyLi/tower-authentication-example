class App.SessionsController extends Tower.Controller
  # Called before authentication
  new: ->

  # Called back after authentication
  create: ->
    console.log @request.authHash
    App.User.findOrCreateFromSession @request.authHash, (error, user) =>
      console.log user if user
      console.log error if error

      @render json: user

  destroy: ->
    @request.logout()
