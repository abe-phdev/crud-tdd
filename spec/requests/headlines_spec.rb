require 'rails_helper'

RSpec.describe "Headlines", type: :request do
  describe "GET /index" do
    context 'when the user is not authenticated' do
      it 'will redirect to login' do
        get headlines_path
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context 'when the user is authenticated' do
      let(:user) { FactoryBot.create(:user) }

      before do
        sign_in(user)
      end

      it 'will show the list of headlines' do
        get headlines_path
        expect(response).to be_successful
      end
    end
  end

  describe "GET /create" do
    context 'when the user is not authenticated' do
      it 'will redirect to log in path' do
        get headlines_path
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context 'when the user is authenticated' do
      let(:user) { FactoryBot.create(:user) }

      before do
        sign_in(user)
      end

      it 'will let the user to create' do
        get headlines_path
        expect(response).to be_successful
      end
    end
  end
end
