class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_picture(picture)
    @picture = picture

    mail to: "oyama919@gmail.com",
         subject: '投稿されました！'
  end
end
