# Tower-Authentication-Example

Note, this is a work in progress, it's not fully setup yet.

See [./config/initializers/passport.coffee](https://github.com/viatropos/tower-authentication-example/blob/master/config/initializers/passport.coffee) to see how the wrapper is built internally.

This is how it's being used:

``` coffeescript
# config/bootstrap.coffee
App.configure ->
  @use 'favicon', Tower.publicPath + '/favicon.png'
  @use 'static',  Tower.publicPath, maxAge: Tower.publicCacheDuration
  @use 'profiler' if Tower.env != 'production'
  @use 'logger'
  @use 'query'
  @use 'cookieParser', Tower.config.session.key
  @use 'session', secret: Tower.config.session.secret, cookie: {domain: Tower.config.session.cookie.domain}
  @use 'bodyParser', uploadDir: './public/uploads'

  Tower.Auth.initialize ->
    @provider 'twitter'
    @provider 'facebook', url: 'local.host:1597'
    @provider 'github'
    @provider 'google'
    @provider 'linkedin'

  #@use 'csrf'
  @use 'methodOverride', '_method'
  @use Tower.Middleware.Agent
  @use Tower.Middleware.Location
  @use Tower.Middleware.Router
```

``` coffeescript
# config/routes.coffee
Tower.Route.draw ->
  @match '/auth/:provider/callback', to: 'sessions#create'
  
  @match '/', to: 'application#welcome'
```

``` coffeescript
class App.SessionsController extends Tower.Controller
  create: ->
    App.User.findOrCreateFromSession @request.authHash, (error, user) =>
      @render json: user
```

## Todo

- login with any of passport's strategies
- send email once to users if they login with email
- show counter on icons for each provider to show how many have logged in.

If anyone knows how to make it so you can authenticate with the oauth/openid services **without redirecting** (such as through a popup or iframe while staying on the login page), I would LOVE to know. I'm not sure if that's possible.