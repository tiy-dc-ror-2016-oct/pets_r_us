# Preview all emails at http://localhost:3000/rails/mailers/owners_mailer
class OwnersMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/owners_mailer/appointment
  def appointment
    OwnersMailer.appointment
  end

end
