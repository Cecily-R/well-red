require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'songs', type: :feature do

  describe "GET songs" do

    it 'returns a successful response' do
      visit :songs

      expect(page).to have_http_status(:success)
    end

    it 'returns song table' do 
      visit :songs

      expect(page).to have_content'Song Title'
      expect(page).to have_content 'Score'
      expect(page).to have_content 'Sound File'
      expect(page).to have_content 'Alto'
      expect(page).to have_content 'Tenor'
      expect(page).to have_content 'Bass'
      expect(page).to have_content 'Soprano'
    end
  end
end  