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

  it 'should respond with drumpf and phrase when invoked with drumpf', (done) ->
    humock.test 'hubot: drumpf foo', (envelope, strings) ->
      expect(strings[0]).match /.* foo.*/
      done()

  it 'should respond with drumpf and phrase when invoked with drump', (done) ->
    humock.test 'hubot: drump bäm bum', (envelope, strings) ->
      expect(strings[0]).match /.* bäm bum.*/
      done()

  it 'should respond with drumpf and phrase when invoked with trump', (done) ->
    humock.test 'hubot: trump my wife', (envelope, strings) ->
      expect(strings[0]).match /.* my wife.*/
      done()

  it 'should respond with drumpf and phrase when invoked with trumpf', (done) ->
    humock.test 'hubot: trumpf Teddys\' wife', (envelope, strings) ->
      expect(strings[0]).match /.* Teddys' wife.*/
      done()

  it 'should respond also work with the me in between', (done) ->
    humock.test 'hubot: drumpf Obama Care', (envelope, strings) ->
      expect(strings[0]).match /.* Obama Care.*/
      done()
