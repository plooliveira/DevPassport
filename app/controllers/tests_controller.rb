class TestsController < ApplicationController
  before_action :set_test, only: [:edit, :update, :destroy]


  def index
    @tests = policy_scope(Test).order(created_at: :desc)
  end

  def new
    @test = Test.new
    authorize @test
  end

  def create
    @test = Test.new(test_params)
    @test.user = current_user
    authorize @test
    if @test.save
      redirect_to company_dashboard_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @test.update (test_params)
    redirect_to company_dashboard_path
  end

  def destroy
    @test.destroy
    redirect_to company_dashboard_path
  end

  def set_test
    @test = Test.find(params[:id])
    authorize @test
  end

  private
  def test_params
    params.require(:test).permit(:title, :description, :seniority, :visa_id)
  end
end
