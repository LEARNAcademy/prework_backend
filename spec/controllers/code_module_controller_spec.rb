require 'rails_helper'



RSpec.describe CodeModulesController, type: :controller do
#Crud tests
    let!(:example_user) {User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')}
    describe 'GET #index', type: :request do
        it 'rejects the request when the user is not signed in' do
            get '/code_modules'
            expect(response.status).to eq(403)
        end
    end

    describe 'POST #create', type: :request do
        it 'rejects the request when user is not signed in' do
            post '/code_module/new'
            expect(response.status).to eq(403)
            expect(response.body).to eq('Not signed in')
        end
    end
    
end
