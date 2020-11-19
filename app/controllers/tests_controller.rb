class TestesController < ApplicationController
before_action :set_test, only: [:edit, :update, :destroy]


  def index
    @tests = police_scope(Test)
  end

  def new
    @test = current_user.test.new
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
    @tests.destroy (test_params)
    redirect_to test_path(@test)
  end

  def destroy
    @tests.destroy (test_params)
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
