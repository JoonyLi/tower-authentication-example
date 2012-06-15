App.bootstrap = (data) ->
  App.Session.load(data.sessions) if data.sessions
  App.User.load(data.users) if data.users

App.initialize()
