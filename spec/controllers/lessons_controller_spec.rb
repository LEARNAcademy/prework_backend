require 'rails_helper'

RSpec.describe LessonsController, type: :controller do

    #Crud tests
    
        it "returns a successful response" do
            get :index
            expect(response).to be_successful 
        end
end
