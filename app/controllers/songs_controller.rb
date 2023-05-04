class SongsController < ApplicationController
  def show 
    @songs = ContentfulClientService.new.client.entries(content_type: 'songs')
    @songs = @songs.sort_by { |song| song.title.downcase }
  end 
end 