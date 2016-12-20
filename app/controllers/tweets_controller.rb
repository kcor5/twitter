class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end

	def create
		puts params[:tweet].inspect
		@tweet = Tweet.new(params[:tweet])
		@tweet.save
	end
end
