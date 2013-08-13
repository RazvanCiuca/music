class SignupMailer < ActionMailer::Base
  default from: "razvann88@ymail.com"

  def welcome_email(user)
    @user = user
    @url = "localhost:3000/sessions/new"
    mail(to: user.email, subject: "Wilkommen!")
  end
end
