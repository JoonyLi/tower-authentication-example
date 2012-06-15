@title = "Session #{@session.toLabel()}"

dl class: "content", ->
  dt "Provider:"
  dd @session.get("provider")
  dt "Uid:"
  dd @session.get("uid")
  dt "Name:"
  dd @session.get("name")
