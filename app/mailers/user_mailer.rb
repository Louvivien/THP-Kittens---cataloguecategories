class UserMailer < ApplicationMailer
  def order_email(recipient, order)
    @recipient = recipient
    @order = order
    mail(to: @recipient.email, subject: 'Thanks for ordering!')
  end
end
