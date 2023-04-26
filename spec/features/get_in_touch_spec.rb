require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'get_in_touch', type: :feature do

  describe "GET get_in_touch" do

    it 'returns a successful response' do
      visit :get_in_touch

      expect(page).to have_http_status(:success)
    end

    it 'returns page introduction, including Contentful content' do 
      visit :get_in_touch

      expect(page).to have_text "If you'd like us to support a left-wing/union event"
      expect(page).to have_text "wellredchoir@gmail.com"
    end

    context 'the form is filled out correctly' do
      it 'returns a sucessful flash message' do 
        visit :get_in_touch

        within('div#contact-form-container') do
          fill_in 'name', with: "James" 
          fill_in 'email', with: "james@gmail.com"
          fill_in 'message', with: 'Hi!'
        end

        click_button 'submit-button'

        expect(current_path).to eq "/get_in_touch"
        expect(page).to have_content "Thanks for getting in touch! We'll get back to you as soon as we can"
      end
    end
  end
end  