class GigsController < ApplicationController
  def show
    @gigs = ContentfulClientService.new.client.entries(content_type: 'gig')
  end
end
