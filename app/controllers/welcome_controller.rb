class WelcomeController < ApplicationController
  def index
  end

  def search
    @search_terms = params[:q].downcase
    get_tweets(@search_terms)
  end

  def get_tweets(user)
    @tweets = TwitterApi.client.user_timeline(user)
  end
end
