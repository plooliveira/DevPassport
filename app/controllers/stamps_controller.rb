class StampsController < ApplicationController
  before_action :set_stamp, only: [:payment, :show, :check_payment]
  skip_before_action :verify_authenticity_token, only: [:check_payment]

  def create
    @stamp = Stamp.new
    authorize @stamp
    @stamp.user_id = params["user"]
    @stamp.test_id = params["test"]
    @stamp.save

    redirect_to payment_path(@stamp)
  end

  def payment
  end

  def show
  end

  def check_payment
    redirect_to stamp_show_path(@stamp)
  end


  private

  def set_stamp
    @stamp = Stamp.find(params[:id])
    authorize @stamp
  end
end
