require 'flickr'

class StaticPagesController < ApplicationController
  @@flickr = Flickr.new
  def index
    if params.include?(:id)
      @images = @@flickr.photos.search(user_id: params[:id])
    else
      @images = @@flickr.photos.getRecent
    end
  end
end
