class UserMailer < ApplicationMailer
  def order_email
    @recipient = params[:user]
    mail(to: @recipient.email, subject: 'Thanks for ordering!')
  end
end
