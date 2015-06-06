React = require 'react'

module.exports =
class PageLoader extends React.Component

  constructor: baseUrl =>
    @baseUrl = baseUrl

  state:
    data: []

  loadPages: range  =>

  loadInitialPages: =>
    loadPages [0]

  componentDidMount: =>
    @loadInitialPages()

  render: =>
    <div className="page-loader">
        <h1>Pages</h1>
    </div>
