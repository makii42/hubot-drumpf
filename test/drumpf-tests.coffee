humock = require 'mock-hubot'
drumpf = require '../src/drumpf.coffee'
{expect} = require 'chai'

describe "drumpf", ->

  beforeEach (done) ->
    humock.start ->
      humock.learn drumpf
      done()

  afterEach (done) ->
    humock.shutdown ->
      done()

  it 'should respond with long response message', (done) ->
    humock.test 'hubot: drumpf foo', (envelope, strings) ->
      expect(strings[0]).match /.* foo.*/
      done()
