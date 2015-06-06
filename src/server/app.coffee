path        = require 'path'
jsonServer  = require 'json-server'
express     = require 'express'

app = jsonServer.create()
router = jsonServer.router 'dest/server/db.json'

# static
app.use '/', express.static path.join __dirname, '..', 'client'

# Routes
app.get '/', (req, res) ->
  res.sendFile 'index.html', root: __dirname + '/html'
app.get '/pages/:id', (req, res) ->
  res.sendFile req.params.id + '.html', root: __dirname + '/html/pages/'

app.use '/api', router

app.listen 3000
console.log 'App started on port 3000'
