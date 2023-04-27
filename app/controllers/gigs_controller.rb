class GigsController < ApplicationController
  def show
    @gigs = ContentfulClientService.new.client.entries(content_type: 'gig')
    @gigs = @gigs.sort_by { |gig| gig.date_and_time }.reverse
  end
end
