class VisasController < ApplicationController
  before_action :set_visa, only: [:show]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @visas = policy_scope(Visa)
  end

  def show
  end

  private

  def set_visa
    @visa = Visa.find(params[:id])
    authorize @visa
  end
end
