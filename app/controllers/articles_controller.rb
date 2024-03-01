class ArticlesController < ApplicationController
  def index
    # binding.pry
    @articles = Article.all
  end
end
