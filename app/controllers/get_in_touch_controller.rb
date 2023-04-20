class GetInTouchController < ApplicationController
  def show
    @contentful_service = ContentfulClientService.new.client.entries(content_type: 'getInTouchPage').first
  end
end
