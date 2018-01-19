fs = require 'fs'
crass = require 'crass'

module.exports = (env, callback) ->

  class CleanCssPlugin extends env.ContentPlugin

    constructor: (@filepath, @text) ->

    getFilename: ->
      @filepath.relative

    getView: -> (env, locals, contents, templates, callback) ->
      try
        parsed = crass.parse(@text)
        parsed = parsed.optimize()
        callback null, new Buffer(parsed.toString({o1:true}))
      catch error
        callback error

  CleanCssPlugin.fromFile = (filepath, callback) ->
    fs.readFile filepath.full, (error, result) ->
      if not error?
        plugin = new CleanCssPlugin filepath, result.toString()
      callback error, plugin

  env.registerContentPlugin 'style', '**/*.css', CleanCssPlugin
  callback()
