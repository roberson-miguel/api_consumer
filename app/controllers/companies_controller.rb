class CompaniesController < ApplicationController

    require 'rest_client'

    USERNAME = "headhunter@headhunter" # needed to access the APi
    PASSWORD = "123123" # needed to access the APi
    API_BASE_URL = "http://localhost:3000/api/v1" # base url of the API

    def index
        # specifying json format in the URl
        uri = "#{API_BASE_URL}/companies.json"
        # It will create new rest-client resource so that we can call different methods of it
        rest_resource = RestClient::Resource.new(uri, USERNAME, PASSWORD)

        # this next line will give you back all the details in json format, 
        #but it will be wrapped as a string, so we will parse it in the next step.
       
        companies = rest_resource.get 

        # we will convert the return data into an array of hash. see json data parsing here
        @companies = JSON.parse(companies, :symbolize_names => true)
    end

    def new
    end

    def create
	    uri = "#{API_BASE_URL}/companies"
	    payload = params.to_json # converting the params to json
	    rest_resource = RestClient::Resource.new(uri, USERNAME, PASSWORD)
	    begin
	      rest_resource.post payload , :content_type => "application/json"
	      flash[:notice] = "Company Saved successfully"
	      redirect_to companies_path # redirect back to index page, which now list the newly created company
	    rescue Exception => e
	     flash[:alert] = "Company Failed to save"
	     render :new
	    end
    end
    
    def edit
	    uri = "#{API_BASE_URL}/companies/#{params[:id]}.json" # specifying format as json so that 
	                                                      #json data is returned 
	    rest_resource = RestClient::Resource.new(uri, USERNAME, PASSWORD)
	    companies = rest_resource.get
	    @company = JSON.parse(companies, :symbolize_names => true)
	end

    def update
	    uri = "#{API_BASE_URL}/companies/#{params[:id]}"
	    payload = params.to_json
	    rest_resource = RestClient::Resource.new(uri, USERNAME, PASSWORD)
	    begin
	      rest_resource.put payload , :content_type => "application/json"
	      flash[:notice] = "Company Updated successfully"
	    rescue Exception => e
	      flash[:alert] = "Company Failed to Update"
	    end
	    redirect_to companies_path
    end
    
    def destroy
	    uri = "#{API_BASE_URL}/companies/#{params[:id]}"
	    rest_resource = RestClient::Resource.new(uri, USERNAME, PASSWORD)
	    begin
	     rest_resource.delete
	     flash[:notice] = "Company Deleted successfully"
	    rescue Exception => e
	     flash[:alert] = "Company Failed to Delete"
	    end
	    redirect_to companies_path
	   end
end