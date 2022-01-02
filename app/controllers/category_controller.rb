class CategoryController < ApplicationController

  def show
    @category = Category.find(params[:id])

    render json: @category, include: ["bills"]
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render json: @category
    else
      render :json => "failed to create category", status: 400
    end
  end

  def category_params
    params.permit(:name, :color)
  end
end
