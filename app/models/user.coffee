class App.User extends Tower.Model
  @field 'facebookId'

  @timestamps()

  @findOrCreateFromSession: (data, callback) ->
    @findFromSession data, (error, user) =>
      if user && user instanceof Tower.Model
        callback.call(@, error, user)
      else
        @createFromSession(data, callback)

  @findFromSession: (data, callback) ->
    # how it should be:
    # @where(token: data.credentials.token).first(callback)
    options = {}
    options[data.provider + 'Id'] = data.id
    @where(options).first(callback)

  @createFromSession: (data, callback) ->
    data.info[data.provider + 'Id'] = data.id
    @create(data.info, callback)