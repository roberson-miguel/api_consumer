require "rails_helper"


feature 'Edited a company' do
  scenario "...I can edit a company" do

    address = Faker::Address.street_address 
    description = Faker::Lorem.paragraph
    
    visit companies_path
    click_link "Edit", match: :first
    
    fill_in 'address', with: "#{address}"
    fill_in 'description', with: "#{description}"
    click_button 'update'

    expect(page).to have_content("#{address}")
    expect(page).to have_content("#{description}")

  end
end