require 'rails_helper'

RSpec.describe "Ramens", type: :system do

  describe "新規投稿" do
    before do
      user = create(:user)
    end

    it "新規投稿に成功する" do
    end

    it "新規投稿に失敗する" do
    end
  end

  describe "更新" do
    before do
      user = create(:user)
    end

    it "更新に成功する" do
    end

    it "更新に失敗する" do
    end
  end

  describe "投稿を削除" do
    before do
      user = create(:user)
    end

    it "成功する" do
    end

    it "他者が投稿を削除する" do
    end
  end
end
