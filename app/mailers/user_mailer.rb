class UserMailer < ActionMailer::Base
  default from: "noreply@virtualfile.com"

  def notification_email(delivery)
    @delivery = delivery
    @document  = @delivery.document
    mail(to: delivery.user_email, subject: 'Someone sent you a file!')
  end
end
