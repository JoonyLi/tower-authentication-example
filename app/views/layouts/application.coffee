doctype 5
html ->
  head ->
    partial 'shared/meta'
  body role: 'application', ->
    #if browserIs 'ie'
    #  javascriptTag 'http://html5shiv.googlecode.com/svn/trunk/html5.js'
    script type: 'text/x-handlebars', 'data-template-name': 'application', ->
      a '{{action authenticate target="App.usersController"}}', 'Login with Facebook'
      div id: 'facebook-count', '{{App.usersController.facebookCount}} (open up multiple browsers and see)'

    if hasContentFor 'bottom'
      yields 'bottom'

    script "App.bootstrap(#{JSON.stringify(@bootstrapData, null, [])})" if @bootstrapData
    script "App.ApplicationView.create().append()"