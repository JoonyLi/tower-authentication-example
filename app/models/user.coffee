class App.User extends Tower.Model
  @field 'facebookId'
  @field 'twitterId'
  @field 'githubId'
  @field 'linkedinId'
  @field 'googleId'

  @timestamps()

  @scope 'facebook', facebookId: '!=': null

  @findOrCreateFromSession: (data, callback) ->
    @findFromSession data, (error, user) =>
      # always create for now...
      if user && user instanceof Tower.Model && user == true
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