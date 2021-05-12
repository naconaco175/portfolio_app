require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    before do
      user = create_list(:user, 11)
      next_page_user = create(:user, name: "next_page_user")
      get users_path
    end

    it "リクエストが成功すること" do
      expect(response).to have_http_status(:success)
    end

    it "ユーザーが10人表示される" do
      expect(response.body).not_to include "next_page_user"
    end
  end

  describe "GET /show" do
    before do
      user = create(:user, name: "test1")
      get user_path(user)
    end

    it "リクエストが成功すること" do
      expect(response).to have_http_status(:success)
    end

    it "ユーザーが表示されること" do
      expect(response.body).to include "test1"
    end
  end

end
