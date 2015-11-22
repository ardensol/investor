class EmailsController < ApplicationController

  respond_to :html, :js

  def new
    @email = Email.new
  end


  def create

    @email = Email.new(email_params)

    if @email.save
      flash[:notice] = "You're Beta Request Has Been Processed!  You'll hear from us soon!"
      ConsultationMailer.new_message(@email).deliver
      respond_with @email
    else
      format.html { render :new }
      format.json { render json: @consultation.errors, status: :unprocessable_entity }

    end
  end

  def email_params
    params.require(:email).permit(:email)
  end


end