class CategoriesController < ApplicationController
  before_action :authenticate_account!

  def new
    @category = Category.new
  end

  def create
    @category = Category.create category_params
    if @category.save then
      redirect_to '/osusume/admin'
    else
      render 'new'
    end
  end
  
  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update category_params
    if @category.save then
      redirect_to '/osusume/admin'
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to '/osusume/admin' 
  end

  private 
  def category_params
    params.require(:category).permit(:name)
  end
end
