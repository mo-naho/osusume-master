class TopController < ApplicationController

  def index
    @articles = Article.all.order('my_date desc')
    @categories = Category.all
  end

  def show
    @articles = Article.all
    @categories = Category.all
    @article = Article.find(params[:id])
    if @article.status == false then
      authenticate_account!
    end
  end
end
