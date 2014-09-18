WordFactories = angular.module("WordFactories", [])

WordFactories.factory("Word", ["$http", ($http)->
	return {
		all: ()->
			$http.get("words.json")
		,	
		create: (newWord)->
			$http.post("words.json", {name: newWord.name, description: newWord.description})
	}
])
