
Router = new Meteor.ModularRouter
	routes:
		"/": "home"
		"/news": "news"
		"/*": "pagenotfound"
PageTurner = new Meteor.PageTurner

PageTurner.start()
Router.start()