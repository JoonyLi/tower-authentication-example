tableFor "users", (t) ->
  t.head ->
    t.row ->
  t.body ->
    for user in @users
      t.row class: "user", "data-id": user.get('id').toString(), ->
        t.cell ->
          linkTo 'Show', urlFor(user)
          span "|"
          linkTo 'Edit', urlFor(user, action: "edit")
          span "|"
          linkTo 'Destroy', urlFor(user), "data-method": "delete"
  t.foot ->
    t.row ->
      t.cell colspan: 3, ->
        linkTo 'New User', urlFor(App.User, action: "new")

