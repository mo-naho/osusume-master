class AdminController < ApplicationController
  before_action :authenticate_account!

  def index
    @articles = Article.all
    @categories = Category.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create article_params
    if @article.save then
      redirect_to '/osusume/admin/'
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update article_params
    if @article.save then
      redirect_to '/osusume/admin/'
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to '/osusume/admin/' 
  end

  private 
  def article_params
    params.require(:article).permit(:title, :main, :my_date, :intro, :status, :writer,{:category_ids=> []}, :image)
  end
end
