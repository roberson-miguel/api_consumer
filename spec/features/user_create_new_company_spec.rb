require "rails_helper"


feature 'Created a company' do
  scenario "...I can create a company" do
    name = Faker::Company.name 
    cnpj = Faker::Number.number(digits: 10)
    address = Faker::Address.street_address 
    description = Faker::Lorem.paragraph
    
    visit companies_path
    click_link "Create New Company"
    
    fill_in 'name', with: "#{name}" 
    fill_in 'cnpj', with: "#{cnpj}"
    fill_in 'address', with: "#{address}"
    fill_in 'description', with: "#{description}"
    click_button 'save'

    expect(page).to have_content("#{name}")
    expect(page).to have_content("#{cnpj}")
    expect(page).to have_content("#{address}")
    expect(page).to have_content("#{description}")

  end
end