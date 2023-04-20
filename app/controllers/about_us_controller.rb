class AboutUsController < ApplicationController
  def show
    @contentful_service = ContentfulClientService.new.client.entries(content_type: 'aboutUsPage').first
  end
end
