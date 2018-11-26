class ApplicationMailer < ActionMailer::Base
  default from: 'thpstudent@gmail.com'
  layout 'mailer'
  def test_email
    @recipient = params[:user]
    mail(to: @recipient.email, subject: 'Welcome to the jungle')
  end
end
