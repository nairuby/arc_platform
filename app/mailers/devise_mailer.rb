class DeviseMailer < Devise::Mailer
  helper EmailHelper
  default from: "no-reply@rubycommunity.africa"
  layout "mailer"
end
