class EssayMailer < ApplicationMailer
  default from: "no-reply@morning-everglades-67680.herokuapp.com"
  layout 'mailer'
  def send_essay(essay_pkg)
    @essay_pkg = essay_pkg
    attachments['essay'] = @essay_pkg.essay
    
    mail(to: @essay_pkg.grader_email, 
      subject: "German IB Essay", 
      template_path: "essay_mailer", 
      template_name: "send_essay.text.erb")
  end
end
