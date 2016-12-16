class TweetsController < ApplicationController
	def new
		@tweets = ["This is cool", "I'm learning how to code", "Very beneficial"]
		@friends = {
			Jody: "cool",
			Ethan: "owes me money",
			Tricia: "likes to dance"
		}
	end
end
