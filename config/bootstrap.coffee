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
    #@provider 'google'
    @provider 'linkedin'

  #@use 'csrf'
  @use 'methodOverride', '_method'
  @use Tower.Middleware.Agent
  @use Tower.Middleware.Location
  @use Tower.Middleware.Router
