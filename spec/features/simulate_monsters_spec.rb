require 'rails_helper'

RSpec.feature "SimulateMonsters", type: :feature do

  #Testing to see if the user can enter details for creating a new monster
  context 'Creating a monster for simulation' do

    Steps 'Creating a monster' do

      #Once I'm on the main landing page
      Given 'I am on the landing page' do
        visit '/'
      end

      #I am informed that I am using a onster simulator
      And 'I see a welcome message,' do
        expect(page).to have_content 'Welcome to the Monster Buddy Simulator!'
      end

      #A form that lets the user enter the specs fo their mosnter
      Then 'I can specify the color, number of eyes, wings, and name' do
        fill_in 'color', with: 'Violet'
        fill_in 'num_eyes', with: '3'
        select 'Wings', from: 'wings'
        fill_in 'name', with: 'Chester Sanchez'
      end

      #The button that tells the controller to create the new instance of the monster
      Then 'I can see the specs of my monster' do
        click_button 'Prepare machine for simulation...'
        visit '/monsters/create'
        expect(page).to have_content("Hello! My name is Chester Sanchez. I am a 3 eyed, violet colored monster with wings. You can feed me, tickle me or even tell me a joke!")
      end

    end #End of steps

  end #end of context

end
