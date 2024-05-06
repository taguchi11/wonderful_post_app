class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    @article
    if @article.save
      puts "保存に成功しました"
      # 保存成功時の処理
    else
      puts "保存に失敗しました"
      # 保存失敗時の処理
    end
  end
  def edit
    @article = Article.find_by(id: params[:id])
  end
private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
