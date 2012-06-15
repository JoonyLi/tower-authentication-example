formFor @session, (f) ->
  f.fieldset (fields) ->
    fields.field "provider", as: "string"
    fields.field "uid", as: "string"
    fields.field "name", as: "string"
  f.fieldset (fields) ->
    fields.submit "Submit"
