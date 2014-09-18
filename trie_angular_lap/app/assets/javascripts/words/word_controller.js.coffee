WordCtrls = angular.module("WordCtrls", [])

@wordsArr = @wordsArr
class WordsCtrl

	constructor: (@scope, @Word, @Trie)->
		@greeting = "Hello World"
		@trie = new @Trie
		@newWord = {}
		@Word.all().success (data) =>
			@wordsArr = data
			data.forEach (@word) =>
				@trie.learn(@word.name)
				# console.log @trie

	autoComplete: (word)->
		@autoComp = @trie.autoComplete(word)

	addWord: ()->
		@Word.create(@newWord)
		@wordsArr.push(@newWord)
		@newWord = {}


WordCtrls.controller("WordsCtrl", ["$scope", "Word", "Trie",  WordsCtrl])