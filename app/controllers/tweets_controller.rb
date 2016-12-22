class TweetsController < ApplicationController
	def new
		puts "flash is #{flash.inspect}"
		@tweet = Tweet.new
	end

	def create
		puts params[:tweet].inspect
		@tweet = Tweet.new(tweet_params)
		if @tweet.save
			flash[:success] = "You have created a tweet."
		else
			flash[:error] = "Tweet failed"
		end
		# flash = {success: 'you have created a tweet'}
		redirect_to new_tweet_path
	end

	def index
		@tweets = Tweet.all
		puts "@tweets are #{@tweets.inspect}"
	end


	private

	def tweet_params
		return params.require(:tweet).permit(:content)
	end
end
