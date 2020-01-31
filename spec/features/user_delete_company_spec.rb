require "rails_helper"


feature 'Deleted a company' do
  scenario "...I can delete a company" do
    
    visit companies_path
    click_link "Delete", match: :first
    
    expect(page).to have_content('Company Deleted successfully')
   
  end
end