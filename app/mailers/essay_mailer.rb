class EssayMailer < ApplicationMailer
  def send_essay(essay_pkg)
    @essay_pkg = essay_pkg
    attachments['essay'] = @essay_pkg.essay
    
    mail(to: @essay_pkg.graderEmail, 
      subject: "German IB Essay", 
      template_path: "essay_mailer", 
      template_name: "send_essay.text.erb")
  end
end
