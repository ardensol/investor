class PagesController < ApplicationController

  def index
    @investments = Investment.all
  end

end
