class WelcomeController < ApplicationController
  require 'socket'

  def index
    if(params[:id])
    @shortLink = Link.find(params[:id])
    end
  end

end
