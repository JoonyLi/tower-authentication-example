li class: "session", ->
  header class: "header", ->
    h3 @session.toLabel()
  dl class: "content", ->
    dt "Provider:"
    dd @session.get("provider")
    dt "Uid:"
    dd @session.get("uid")
    dt "Name:"
    dd @session.get("name")
  footer class: "footer", ->
    menu ->
      menuItem "Edit", urlFor(@session, action: "edit")
