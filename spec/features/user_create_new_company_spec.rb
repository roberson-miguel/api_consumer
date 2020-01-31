require "rails_helper"


feature 'Created a company' do
  scenario "...I can create a company" do
    
    visit companies_path
    click_link "Create New Company"
    
    fill_in 'name', with: 'Campus Code Testes'
    fill_in 'cnpj', with: '05.372.840999'
    fill_in 'address', with: 'Alameda Santos, 011'
    fill_in 'description', with: 'Consultoria e Treinamentos em tecnologia, especializada em Ruby on Rails'
    click_button 'save'

    expect(page).to have_content('Campus Code Testes')
    expect(page).to have_content('05.372.840999')
    expect(page).to have_content('Alameda Santos, 011')
    expect(page).to have_content('Consultoria e Treinamentos em tecnologia, especializada em Ruby on Rails')


  end
end