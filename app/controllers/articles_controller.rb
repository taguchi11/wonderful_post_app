class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update ,]
  def index
    @articles = Article.all
  end
  def show
  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    if @article.save
      # 保存成功時の処理
      redirect_to root_path
      flash[:success] = '記事を作成できました。'
    else
      # 保存失敗時の処理
      redirect_to root_path
      flash[:alert] = '記事の作成に失敗しました。'
    end
  end
  def edit

  end
  def update
    if @article.update(article_params)
      # 保存成功時の処理
      flash[:notice] = "記事を編集しました。"
      redirect_to  @article
      else
      # 保存失敗時の処理
        flash[:notice] = "投稿に失敗しました"
        render :edit
      end
  end
  def destroy
    @article = Article.find_by(id: params[:id])
    @article.destroy
    redirect_to root_path
    flash[:notice] = '記事を削除しました.'
  end
private
  def set_article
    @article = Article.find_by(id: params[:id])
  end
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
