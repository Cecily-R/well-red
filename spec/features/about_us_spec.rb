require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'get_in_touch', type: :feature do

  describe "GET get_in_touch" do

    it 'returns a successful response' do
      visit :about_us

      expect(page).to have_http_status(:success)
    end
  end 
end