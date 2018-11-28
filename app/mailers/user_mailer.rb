class UserMailer < ApplicationMailer
  def order_email
    @recipient = current_user
    @order = current_user.orders.last
    mail(to: @recipient.email, subject: 'Thanks for ordering!')
  end
end
