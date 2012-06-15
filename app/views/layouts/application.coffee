doctype 5
html ->
  head ->
    partial 'shared/meta'
  body role: 'application', ->
    #if browserIs 'ie'
    #  javascriptTag 'http://html5shiv.googlecode.com/svn/trunk/html5.js'
    script type: 'text/x-handlebars', 'data-template-name': 'application', ->
      a '{{action facebookAuth target="App.usersController"}}', 'Login with Facebook'
      div id: 'facebook-count', '{{App.usersController.facebookCount}} (open up multiple browsers and see)'
      a '{{action twitterAuth target="App.usersController"}}', 'Login with Twitter'
      div id: 'twitter-count', '{{App.usersController.twitterCount}}'
      a '{{action githubAuth target="App.usersController"}}', 'Login with GitHub'
      div id: 'github-count', '{{App.usersController.githubCount}}'
      a '{{action linkedinAuth target="App.usersController"}}', 'Login with LinkedIn'
      div id: 'linkedin-count', '{{App.usersController.linkedinCount}}'
      a '{{action googleAuth target="App.usersController"}}', 'Login with Google'
      div id: 'google-count', '{{App.usersController.googleCount}}'

    if hasContentFor 'bottom'
      yields 'bottom'

    script "App.bootstrap(#{JSON.stringify(@bootstrapData, null, [])})" if @bootstrapData
    script "App.ApplicationView.create().append()"