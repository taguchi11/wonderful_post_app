class ArticlesController < ApplicationController
  def index
    # binding.pry
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end
  def create
    # binding.pry
    @article = Article.new(
      title:params[:title],
      content:params[:content]
    )
    
    @article.save
  end
end
