require 'rails_helper'

require 'rest_client'

describe 'Company Management' do
    context 'Index' do

        it 'Connection with API company in Trampos correctly' do
        
            get companies_path
               
            expect(response).to have_http_status(:ok)
        end

        #Using before with get root
        before do
            get companies_path
        end

        it "returns http success" do
            expect(response).to have_http_status(:success)
            
        end

        it 'Render Companies of API Trampos correctly' do
        
            get companies_path
     
            expect(response).to render_template(:index)
          
        end
    end
end