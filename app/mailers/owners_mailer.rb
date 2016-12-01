class OwnersMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.owners_mailer.appointment.subject
  #
  def appointment
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
