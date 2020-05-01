require 'rails_helper'



RSpec.describe CodeModulesController, type: :controller do

    let!(:example_user) {User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')}
    describe 'GET #index', type: :request do
        it 'rejects the request when the user is not signed in' do
            get :index
            expect(response.status).to eq(403)
            expect(repsonse.body).to eq('Not signed in')
        end
    end

end
