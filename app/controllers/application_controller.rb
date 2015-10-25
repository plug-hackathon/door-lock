class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def secret_knock_present?
    session[:secret_knock]
  end

  def require_secret_knock
    redirect_to root_path unless secret_knock_present?
  end
end
