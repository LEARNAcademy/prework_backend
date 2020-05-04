require 'rails_helper'

#Variable example_user is to create a mock user to be used for relations and devise. 
example_user = User.create email: 'test@test.test', password: 'password', password_confirmation: 'password'

RSpec.describe CodeModulesController, type: :controller do

#Crud tests
#Test for index authorization
    describe 'GET #index', type: :request do
        it 'rejects the request when the user is not signed in' do
            get '/code_modules'
            expect(response.status).to eq(403)
            expect(response.body).to eq("Please Sign In to Access")
        end
    end

#Test for show authorization
    describe 'GET #show', type: :request do
    it 'rejects the request to see a single module if no user is signed in' do
            get '/code_modules/1'
            expect(response.status).to eq(403)
            expect(response.body).to eq("Please Sign In to Access")
        end
    end

#Test for create authorization
    describe 'POST #create', type: :request do
    it 'should reject new code_module creation if no user is signed in' do
        post "/code_modules"
        expect(response.status).to eq(403)
        expect(response.body).to eq("Please Sign In to Access")
        end

#Test for create invalid params check
    it 'returns errors for invalid code_module creation' do
        sign_in example_user
        codeModule_params = {
            code_module: {
                lesson: '',
                progress: 0,
                completed: false,
                user_id: nil
            }
        }
        post '/code_modules', params: codeModule_params
        json = JSON.parse(response.body)
        expect(response.status).to eq(422)
        expect(json['lesson']).to include "can't be blank"
    end

#Test for create valid params check. 
    # it 'successfully creates a code_module' do
    #     sign_in example_user
    #     codeModule_params = {
    #         code_module: {
    #             lesson: 'This is a test module',
    #             progress: '10',
    #             completed: true,
    #             user_id: 1
    #         }
    #     }
    #     post '/code_modules', params: codeModule_params
    #     expect(CodeModule.count).to eq(1)
    # end


    end

#Test for update authorization
    describe 'PUT #update', type: :request do
        it 'should reject request if no user is signed in' do
            put "/code_modules/1"
            expect(response.status).to eq(403)
            expect(response.body).to eq("Please Sign In to Access")
        end
    end

#Tests for delete/destroy
    describe 'DELETE #destroy', type: :request do
    it 'should reject requests if no user is signed in' do
        delete "/code_modules/1"
        expect(response.status).to eq(403)
        expect(response.body).to eq("Please Sign In to Access")
        end

        it 'should disallow deletions when no such code_module exists' do
            sign_in example_user
            expect { delete "/code_modules/1" }.to raise_error(ActiveRecord::RecordNotFound)
        end
    end

end
