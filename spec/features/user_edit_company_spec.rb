require "rails_helper"


feature 'Edited a company' do
  scenario "...I can edit a company" do
    
    visit companies_path
    click_link "Edit", match: :first
    
    fill_in 'name', with: 'Campus Code Editado'
    fill_in 'cnpj', with: '05.372.840/0001-07'
    fill_in 'address', with: 'Alameda Santos, 1293'
    fill_in 'description', with: 'Consultoria e Treinamentos em tecnologia, especializada em Ruby on Rails'
    click_button 'update'

    expect(page).to have_content('Campus Code Editado')
    expect(page).to have_content('05.372.840/0001-07')
    expect(page).to have_content('Alameda Santos, 1293')
    expect(page).to have_content('Consultoria e Treinamentos em tecnologia, especializada em Ruby on Rails')

  end
end