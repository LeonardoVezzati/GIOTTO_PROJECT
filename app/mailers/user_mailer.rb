class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.invitation.subject
  #
  def invitation
   @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to Giotto')
  end
end
