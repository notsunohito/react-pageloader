Request = require '../client/components/pageloader/models/request'

request = new Request 'http://localhost:3000/'
request.get 'pages/1'
  .then (result) -> console.log result
