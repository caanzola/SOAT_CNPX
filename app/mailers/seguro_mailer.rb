class SeguroMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.seguro_mailer.payment_confirmation.subject
  #
  def payment_confirmation(user)
    @user = user

    mail to: @user.email, subject:"Confirmación de pago de su SOAT"
  end
end
