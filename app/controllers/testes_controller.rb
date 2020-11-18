class TestesController < ApplicationController
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

  def edit
  end

  def destroy
    @test = Test.find(params[:id])
    @tests.destroy (test_params)
    redirect_to test_path
  end

  def set_test
    @test = Test.find(params[:id])
    authorize @test
  end
end
