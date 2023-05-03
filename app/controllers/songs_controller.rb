class SongsController < ApplicationController
  def show 
    @songs = ContentfulClientService.new.client.entries(content_type: 'songs')
  end 
end 