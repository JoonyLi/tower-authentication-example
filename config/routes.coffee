Tower.Route.draw ->
  @match '/auth/:provider/callback', to: 'sessions#create'
  
  @match '/', to: 'application#welcome'
