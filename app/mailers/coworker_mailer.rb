class CoworkerMailer < ApplicationMailer
  default from: "notifications@mailer.com"

  def welcome_email(coworker)
    @coworker = coworker
    mail(to: @coworker.email, subject: "Welcome #{coworker.name}")
  end
end
