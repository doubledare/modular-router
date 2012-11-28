
Router = new Meteor.PathJSRouter
	routes:
		"/": "home"
		"/news": "news"
		"/*": "pagenotfound"
PageTurner = new Meteor.PageTurner

PageTurner.start()
Router.start()