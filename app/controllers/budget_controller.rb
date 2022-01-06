class BudgetController < ApplicationController
  include AuthenticationHelper

  before_action :require_login

  def create
    @budget = Budget.new(budget_params)
    if @budget.save
      render json: @budget
    else
      render :json => "failed to create budget", status: 400
    end
  end

  def show
    @budget = Budget.find(params[:id])
    
    render json: @budget, include: ["bills", "categories"]
  end

  def budget_params
    params.permit(:income, :user_id)
  end
end
