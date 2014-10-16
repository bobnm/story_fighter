class StaticPagesController < ApplicationController
  def home
	  @informations = Information.currents
  end

  def help
  end
end
