class ApplicationMailer < ActionMailer::Base
  default from: 'thpstudent@gmail.com'
  layout 'mailer'
  def test_email
    @recipient = 'thpcrysicia@mailinator.com'
    mail(to: @recipient, subject: 'Welcome to the jungle')
  end
end
