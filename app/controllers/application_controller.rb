class ApplicationController < ActionController::Base
  before_action :authenticate_user! # All users should be authenticated in all controllers by default

  ##
  # CanCanCan permission exception capture
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      if user_signed_in?
        format.html { redirect_to root_path, alert: exception.message }
      else
        format.html { redirect_to root_path, alert: 'Please sign in to perform the action' }
      end
    end
  end
end
