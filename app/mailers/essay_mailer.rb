class EssayMailer < ApplicationMailer
  def send_essay(essay_pkg)
    @essay_pkg = essay_pkg
    
    mail(to: @essay_pkg.grader_email, 
      subject: "German IB Essay")
  end
end
