class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def sample_email(cleaner)
    @cleaner = cleaner
    mail(to: @cleaner.email, subject: 'New Booking')
  end
end
