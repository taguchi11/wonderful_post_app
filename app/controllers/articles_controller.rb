class ArticlesController < ApplicationController
  def index
    # binding.pry
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end
  
end
