class AdminMailer < ApplicationMailer
  def user_order_email
    @recipient = admin_user
    @order = Order.last
    mail(to: @recipient.email, subject: 'Thanks for ordering!')
  end
end
