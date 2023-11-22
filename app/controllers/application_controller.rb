class ApplicationController < ActionController::API
  before_action :set_current_user

  private
  def set_current_user
    # This to be replaced by logged in user after authentication setup
    @current_user = User.order(id: :asc).first
  end
end
