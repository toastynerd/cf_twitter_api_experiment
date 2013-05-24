class TweetsController < ApplicationController
  before_filter :find_tweet, :only => [:edit, :update, :show, :destroy]

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(params[:tweet])
    if @tweet.save
      flash[:notice] = "You just created a new tweet."
      redirect_to @tweet
    else
      flash[:notice] ="Could not create tweet."
      render :action => "new"
    end
  end

  def show
    #
  end

private
  def find_tweet
    @tweet = Tweet.find(params[:id])
  end
end
