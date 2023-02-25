##
# Devise override Registration controller
class Users::RegistrationsController < Devise::RegistrationsController
  ##
  # Devise override Registration create action
  def create
    super do
      # TODO @banta
    end
  end
end
