class TweetsController < ApplicationController
  def index
    @tweets=Tweet.all
  end
  def new
    @tweet=Tweet.new
  end
  def create
    @tweet=Tweet.new tweet_params
    @tweet.save
    redirect_to tweets_path
  end
  private
  def tweet_params
    params.require(:tweet).permit(:title, :content, :links)
  end

end