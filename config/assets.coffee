module.exports =
  javascripts:
    application: [
      '/config/application'
      '/app/client/config/bootstrap'
      '/config/routes'
      '/app/views/templates'
      "/app/models/user"
      "/app/client/controllers/usersController"
      "/app/models/session"
      "/app/client/controllers/sessionsController"
      "/app/client/views/layouts/application"
    ]

    lib: [

    ]

    vendor: [
      '/vendor/javascripts/underscore'
      '/vendor/javascripts/underscore.string'
      '/vendor/javascripts/moment'
      '/vendor/javascripts/geolib'
      '/vendor/javascripts/validator'
      '/vendor/javascripts/accounting'
      '/vendor/javascripts/inflection'
      '/vendor/javascripts/prettify'
      '/vendor/javascripts/async'
      '/vendor/javascripts/socket.io'
      '/vendor/javascripts/handlebars'
      '/vendor/javascripts/ember'
      '/vendor/javascripts/tower'
      '/vendor/javascripts/bootstrap/bootstrap-transition'
      '/vendor/javascripts/bootstrap/bootstrap-alert'
      '/vendor/javascripts/bootstrap/bootstrap-modal'
      '/vendor/javascripts/bootstrap/bootstrap-dropdown'
      '/vendor/javascripts/bootstrap/bootstrap-scrollspy'
      '/vendor/javascripts/bootstrap/bootstrap-tab'
      '/vendor/javascripts/bootstrap/bootstrap-tooltip'
      '/vendor/javascripts/bootstrap/bootstrap-popover'
      '/vendor/javascripts/bootstrap/bootstrap-button'
      '/vendor/javascripts/bootstrap/bootstrap-collapse'
      '/vendor/javascripts/bootstrap/bootstrap-carousel'
      '/vendor/javascripts/bootstrap/bootstrap-typeahead'
    ]

    development: [
      '/vendor/javascripts/mocha'
      '/vendor/javascripts/chai'
      '/vendor/javascripts/design.io'
      '/test/client'
      "/test/models/userTest"
      "/test/models/sessionTest"
    ]

  stylesheets:
    application: [
      '/app/client/stylesheets/application'
    ]

    lib: [

    ]

    vendor: [
      '/vendor/stylesheets/bootstrap/bootstrap'
      '/vendor/stylesheets/prettify'
    ]

    development: [
      # '/vendor/stylesheets/mocha'
    ]
