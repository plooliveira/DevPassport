class DashboardController < ApplicationController

  def user
    @user = current_user

    @tests = policy_scope(Test).where(user: current_user).order(created_at: :desc)

  end

  def company
    @tests = policy_scope(Test).where(user: current_user).order(created_at: :desc)
  end
end
