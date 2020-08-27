class UserMailer < ApplicationMailer

  def invitation
   @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to Giotto')
  end
end
