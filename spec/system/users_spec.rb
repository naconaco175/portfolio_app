require 'rails_helper'

RSpec.describe "Users", type: :system do

  describe "サインアップ" do
    before do
      user = create(:user)
    end

    it "サインアップに成功する" do
    end

    it "サインアップに失敗する" do
    end
  end

  describe "ログイン" do
    before do
      user = create(:user)
    end

    it "ログインに成功する" do
    end

    it "ログインに失敗する" do
    end
  end

  describe "ログアウト" do
    before do
      user = create(:user)
    end

    it "ログアウトに成功する" do
    end
  end

  describe "更新する" do
    before do
      user = create(:user)
    end

    it "更新に成功する" do
    end

    it "更新に失敗する" do
    end
  end

  describe "Mypage" do
    before do
      user = create(:user)
    end

    it "MYpageを表示する" do
    end

    it "他者がMypageにアクセス" do
    end
  end
end
