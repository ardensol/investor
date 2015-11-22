class PagesController < ApplicationController

  def index
    @investments = Investment.all

    @email = Email.new
  end

end
