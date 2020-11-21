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
    @test = current_user.test.new(test_params)
    authorize @test
    if @test.save
    redirect_to test_path(@test)
    end
  end

  def edit
  end

  def update
    @test.update (test_params)
    redirect_to test_path(@test)
  end

  def destroy
    @test.destroy (test_params)
    redirect_to test_path
  end

  def set_test
    @test = Test.find(params[:id])
    authorize @test
  end

  private
  def test_params
    params.require(:test).permit(:title, :description)
  end
end
