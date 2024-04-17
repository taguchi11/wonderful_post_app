class ArticlesController < ApplicationController
  def index
    # binding.pry
    @articles = Article.all
  end
  def show
    # binding.pry
    @article = Article.find(params[:id])
    # binding.pry
  end
  def new
    binding.pry
    @article = Article.new
    binding.pry
  end
  def create
    binding.pry
    @article = Article.new(article_params)
    binding.pry
    @article.save
  end
private
  def article_params
    # params[:カラム名]
    params.permit(:title, :content)
  end
end
