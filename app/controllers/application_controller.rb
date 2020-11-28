class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  include Pundit

  status_name = {
    0 => "payment pending",
    1 => "payment approved",
    2 => "test started",
    3 => "test completed",
    4 => "stamp granted",
    5 => "stamp not granted",
  }


  # Pundit: white-list approach.
  after_action :verify_authorized, except: [:index, :user, :company], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: [:index, :user, :company], unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
