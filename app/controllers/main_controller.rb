class MainController < ApplicationController
  def index
    @contentful_service = ContentfulClientService.new.client.entries(content_type: 'homepage').first
  end
end
