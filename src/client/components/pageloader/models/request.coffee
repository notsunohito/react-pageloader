_       = require 'lodash'
request = require 'superagent'
Promise = require 'bluebird'

module.exports =
class Request

  constructor: (baseUrl, contentType) ->
    @baseUrl = baseUrl
    @contentType = contentType

  get: (path) =>
    new Promise (resolve, reject) =>
      request.get @baseUrl + path
        .end (err, res) =>
          if err then reject err
          resolve res.text

  post: (path, body) =>
    new Promise (resolve, reject) =>
      request.post @baseUrl + path
        .set 'Content-Type', @contentType
        .send body
        .end (err, res) =>
          if err then reject err
          resolve res.text
