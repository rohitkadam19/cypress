chai      = require("chai")
sinon     = require("sinon")
sinonChai = require("sinon-chai")

chai.use(sinonChai)

global.expect = chai.expect
global.io = {
  connect: ->
    return {on: ->}
}

beforeEach ->
  @sandbox = sinon.sandbox.create()

afterEach ->
  @sandbox.restore()