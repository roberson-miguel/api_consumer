require 'rails_helper'

require 'rest_client'

describe 'Company Management' do
    context 'Index' do

        it 'Connection with API company in Trampos correctly' do
        
            get companies_path
               
            expect(response).to have_http_status(:ok)
        end

        it 'Render Companies of API Trampos correctly' do

            get companies_path
                                             
            expect(response.body).to include("Campus Code")
            expect(response.body).to include("Bios Bug")
          
        end
    end
end