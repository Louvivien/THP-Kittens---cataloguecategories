class AdminMailer < ApplicationMailer
  def user_order_email(user, order)
    @user = user
    @order = order
    mail(to: 'thpkittensadmin@notmailinator.com', subject: 'An user has ordered something!')
  end
end
