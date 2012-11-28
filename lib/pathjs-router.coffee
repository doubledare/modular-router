
class Meteor.PathJSRouter
	constructor: ( options )->
		console.log "New PathJSRouter."
		if options?.routes? and _.isObject options.routes
			console.log "Routes received", options.routes
			for k,v of options.routes
				console.log "mapping", k, v
				Path.map( k.toString() ).to =>
					console.log "routing to", k, v
					amplify.publish "route", v
	start: ->
		console.log "Router starting."
		Path.listen()

class Meteor.PageTurner
	constructor: ( options )->
		console.log "New PageTurner."
		amplify.subscribe "route", (args...)->
			console.log "PageTurner Route received", args
	start: ->
		console.log "PageTurner starting."