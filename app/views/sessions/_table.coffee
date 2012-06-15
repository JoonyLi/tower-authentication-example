tableFor "sessions", (t) ->
  t.head ->
    t.row ->
      t.header "provider", sort: true
      t.header "uid", sort: true
      t.header "name", sort: true
  t.body ->
    for session in @sessions
      t.row class: "session", "data-id": session.get('id').toString(), ->
        t.cell -> session.get("provider")
        t.cell -> session.get("uid")
        t.cell -> session.get("name")
        t.cell ->
          linkTo 'Show', urlFor(session)
          span "|"
          linkTo 'Edit', urlFor(session, action: "edit")
          span "|"
          linkTo 'Destroy', urlFor(session), "data-method": "delete"
  t.foot ->
    t.row ->
      t.cell colspan: 6, ->
        linkTo 'New Session', urlFor(App.Session, action: "new")

