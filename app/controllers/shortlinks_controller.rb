class ShortlinksController < ApplicationController

  def new
  end


  def create
    if (@shortLink = Link.find_by_url(params[:url]))
    else
      @shortLink = Link.create(
          url: params[:url],
          short_name: Link.short_name
      )
    end
    # redirect_to root_path
    redirect_to  :controller => "welcome", :action => "index", :id => @shortLink
  end

  def show
    if (link = Link.find_by_short_name(params[:id]))
      redirect_to link[:url]
    else
      render :text => '<center><h1>Not Found</h1></center>', :status => '404'
    end
  end

end
