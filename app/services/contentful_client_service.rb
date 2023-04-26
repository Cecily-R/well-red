class ContentfulClientService
  ACCESS_TOKEN = Rails.application.credentials.contentful.access_token
  SPACE_ID = 'je5v8yebtep6'.freeze

  def client
    @client ||= Contentful::Client.new(
      access_token: ACCESS_TOKEN,
      space: SPACE_ID,
      dynamic_entries: :auto,
      raise_errors: true,
      raise_for_empty_fields: false,
    )
  end
end