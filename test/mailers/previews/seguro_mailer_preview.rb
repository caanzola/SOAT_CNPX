# Preview all emails at http://localhost:3000/rails/mailers/seguro_mailer
class SeguroMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/seguro_mailer/payment_confirmation
  def payment_confirmation
    SeguroMailer.payment_confirmation User.new("username":"prueba", "email":"a@a.com")
  end

end
