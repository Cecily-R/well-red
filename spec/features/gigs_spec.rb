require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'gigs', type: :feature do

  describe "GET gigs" do

    it 'returns a successful response' do
      visit :get_in_touch

      expect(page).to have_http_status(:success)
    end
  end 
end

