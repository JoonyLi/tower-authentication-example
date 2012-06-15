li class: "user", ->
  header class: "header", ->
    h3 @user.toLabel()
  dl class: "content", ->
  footer class: "footer", ->
    menu ->
      menuItem "Edit", urlFor(@user, action: "edit")
