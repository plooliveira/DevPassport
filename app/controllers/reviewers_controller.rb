class ReviewersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_reviewer, only: [:show]

  def index
    @reviewers = policy_scope(User).where(role: 2)
  end

  def show
    authorize @reviewer
  end

  def set_reviewer
    @reviewer = User.find(params[:id])
  end
end
