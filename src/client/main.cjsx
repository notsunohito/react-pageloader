App = require './app'

config =
  url: 'http://localhost:3000/api/comments'


new App(config)
  .start()
