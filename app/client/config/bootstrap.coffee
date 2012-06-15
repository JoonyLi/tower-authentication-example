App.bootstrap = (data) ->
  App.Session.load(data.sessions) if data.sessions
  App.User.load(data.users) if data.users

App.initialize()
App.listen()
Tower.Net.Connection.transport = Tower.Store.Transport.Ajax