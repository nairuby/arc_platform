class ApplicationController < ActionController::Base
  before_action :authenticate_user! # All users should be authenticated in all controllers by default
end
