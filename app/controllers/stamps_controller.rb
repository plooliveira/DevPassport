class StampsController < ApplicationController
  before_action :set_stamp, only: [:payment, :show, :edit, :check_payment]
  skip_before_action :verify_authenticity_token, only: [:check_payment]

  def create
    @stamp = Stamp.new
    @code_review = CodeReview.new
    authorize @stamp
    @stamp.user_id = params["user"]
    @stamp.test_id = params["test"]
    @stamp.save

    @code_review.stamp = @stamp
    @code_review.save

    redirect_to payment_path(@stamp)
  end

  def payment
  end

  def show
  end

  def edit
  end

  def check_payment
    redirect_to stamp_path(@stamp)
  end


  private


  def set_stamp
    @stamp = Stamp.find(params[:id])
    authorize @stamp
  end
end
