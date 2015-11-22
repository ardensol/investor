class ConsultationMailer < ActionMailer::Base
  default :from => "<austinyhua@gmail.com>"


  def new_message(consultation)
    @consultation = consultation
    mail(:subject => "New Consultation Request!",
         bcc:"austinyhua@gmail.com" )
  end
end