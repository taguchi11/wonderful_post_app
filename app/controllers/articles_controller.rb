class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update]
  def index
    @articles = Article.all
  end
  def show
    binding.pry
    # @article = Article.find(params[:id])
    binding.pry
  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    if @article.save
      puts "保存に成功しました"
      # 保存成功時の処理
    else
      puts "保存に失敗しました"
      # 保存失敗時の処理
    end
  end
  def edit
    # binding.pry
    # @article = Article.find_by(id: params[:id])
    # binding.pry
  end
  def update
    binding.pry
    if @article.update(article_params)
      binding.pry
      puts "保存に成功しました"
      # 保存成功時の処理
        else
       puts "保存に失敗しました"
          # 保存失敗時の処理
       end
  end
private
  def set_article
    @article = Article.find_by(id: params[:id])
  end
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
