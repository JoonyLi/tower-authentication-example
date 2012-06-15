session = null

describe "App.Session", ->
  describe "fields", ->
    beforeEach (done) ->
      session = new App.Session
        provider: "A provider"
        uid: "A uid"
        name: "A name"

      done()

    test "provider", ->
      assert.ok session.get("provider")

    test "uid", ->
      assert.ok session.get("uid")

    test "name", ->
      assert.ok session.get("name")

  describe "relations", ->

