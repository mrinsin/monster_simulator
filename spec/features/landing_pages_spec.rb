require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do

  context 'Going to the/a website' do

    Steps 'Being Welcomed' do

      Given 'I am on the landing page' do
        visit '/'
      end

      Then 'I can see a welcome messgae' do
        expect(page).to have_content("Welcome to the Monster Buddy Simulator!")
      end

    end #End of Steps

  end #End of context

end #End of landing pages rspec feature
