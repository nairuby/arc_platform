class LandingController < ApplicationController
  # People should not require authentication for following actions
  skip_before_action :authenticate_user!, only: %i[index about learn]
  def index;end

  ##
  # About us page
  def about;end

  ##
  # Featured learning materials
  def learn;end
end
