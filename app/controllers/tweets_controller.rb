class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end

	def create
		puts params[:tweet].inspect
		@tweet = Tweet.new(tweet_params)
		@tweet.save
	end



	private

	def tweet_params
		return params.require(:tweet).permit(:content)
	end
end
