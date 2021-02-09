class LikesController < ApplicationController

  before_action :prepare_tweet

  def create
    @like = current.user.likes.new(tweet_id: @tweet.id)
    @like.save
    @likes = Like.where(tweet_id: @tweet.id)
  end

  def destroy
    @like = Like.find_by(tweet_id: @tweet.id, user_id: current_user.id).destroy
    @likes = Like.where(tweet_id: @tweet.id)
  end

  private
  def prepare_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end
end
