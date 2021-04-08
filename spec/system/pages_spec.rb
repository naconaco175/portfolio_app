require 'rails_helper'

RSpec.describe "Pages", type: :system do

  describe "ログイン前" do
    before do
      user = create(:user)
    end

    it "ページ内リンク" do
    end
  end

  describe "ログイン後" do
    before do
      user = create(:user)
    end

    it "ページ内リンク" do
    end

    it "投稿がタイムラインが表示" do
    end

    it "投稿がランキング表示される" do
    end
  end
end
