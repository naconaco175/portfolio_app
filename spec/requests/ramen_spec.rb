require 'rails_helper'

RSpec.describe "Ramens", type: :request do
  describe "GET /index" do
    it "リクエストが成功すること" do
      get
      expect(response).to have_http_status(:success)
    end

    it '投稿が表示されていること' do
    end
  end

  describe "GET /show" do
    it "リクエストが成功すること" do
      get
      expect(response).to have_http_status(:success)
    end

    it '投稿が表示されていること' do
    end

    it '投稿が存在しない場合' do
    end
  end

  describe "GET /new" do
    it "リクエストが成功すること" do
      get
      expect(response).to have_http_status(:success)
    end


  end

  describe "GET /edit" do
    it "リクエストが成功すること" do
      get
      expect(response).to have_http_status(:success)
    end

    it '投稿が表示されていること' do
    end
  end

  describe "GET /create" do
    context 'パラメータが妥当な場合' do
      it "リクエストが成功すること" do
        get
        expect(response).to have_http_status(:success)
      end

      it '投稿が保存されていること' do
      end

      it 'リダイレクトすること' do
      end
    end

    context 'パラメータが不正な場合' do
      it "リクエストが成功すること" do
        get
        expect(response).to have_http_status(:success)
      end

      it '投稿が保存されないこと' do
      end

      it 'エラーが出ること' do
      end
    end
  end

  describe "GET /update" do
    context 'パラメータが妥当な場合' do
      it "リクエストが成功すること" do
        get
        expect(response).to have_http_status(:success)
      end

      it '投稿が更新されていること' do
      end

      it 'リダイレクトすること' do
      end
    end

    context 'パラメータが不正な場合' do
      it "リクエストが成功すること" do
        get
        expect(response).to have_http_status(:success)
      end

      it '投稿が更新されないこと' do
      end

      it 'エラーが出ること' do
      end
    end
  end

  describe "GET /destory" do
    it "リクエストが成功すること" do
      get
      expect(response).to have_http_status(:success)
    end

    it '投稿が削除されること' do
    end

    it 'ユーザー一覧にリダイレクトすること' do
    end
  end

end