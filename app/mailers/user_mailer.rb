class UserMailer < ApplicationMailer
  default from: "contato.iena.jp@gmail.com"

  def notify_user(info)
    @info = info

    mail(to: "joerverson.santos@gmail.com", subject: @info)
  end
end
