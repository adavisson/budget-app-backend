class BillController < ApplicationController
  def show
    @bill = Bill.find(params[:id])
    render json: @bill, indclude: ["category"]
  end

  def create
    @bill = Bill.new(bill_params)
    if @bill.save
      render json: @bill, include: ["category"]
    else
      render :json => "failed to create bill", status: 400
    end
  end

  def bill_params
    params.permit(:name, :amount, :budget_id, :category_id)
  end
end
