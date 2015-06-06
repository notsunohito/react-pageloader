React = require 'react'
PageLoader = require './components/pageloader/pageloader'

module.exports =
class App

  constructor: (config)->
    @url = config.url

  start: ()->
    React.render <PageLoader url=@url />, document.getElementById 'app'
