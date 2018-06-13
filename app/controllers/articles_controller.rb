class ArticlesController < ApplicationController

  def show
    @aid = params[:id]
    @article = Article.find_by_id(@aid)
  end

  def new
  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
