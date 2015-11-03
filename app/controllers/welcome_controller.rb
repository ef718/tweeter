class WelcomeController < ApplicationController
  def index
  end

  def search
    @search_terms = params[:q].downcase
    client.get_all_tweets(@search_terms)
  end

  def client.get_all_tweets(user)
    collect_with_max_id do |max_id|
      options = {count: 10, include_rts: true}
      options[:max_id] = max_id unless max_id.nil?
      user_timeline(user, options)
    end
  end

  def collect_with_max_id(collection=[], max_id=nil, &block)
    response = yield(max_id)
    collection += response
    response.empty? ? collection.flatten : collect_with_max_id(collection, response.last.id - 1, &block)
  end
end
