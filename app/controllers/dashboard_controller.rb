class DashboardController < ApplicationController

  def user
  end

  def company
    @tests = policy_scope(Test).where(user: current_user).order(created_at: :desc)
  end
end
