class WelcomeController < ApplicationController
  def index
  end

  def search
    @search_terms = params[:q].downcase
  end
end
