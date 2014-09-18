# WordService = angular.module("WordService", [])

# WordService.factory "WordStuff", ["$http" ($http)->
# 	return {
# 		all: ()->
# 			$http.get("words.json")
# 		,	
# 		create: (newWord)->
# 			$http.post("words.json", {name: newWord.name, description: newWord.description})
# 	}
# ]
# # WordService.service('WordStuff', ["$http", WordStuff])