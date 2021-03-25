require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'ユーザー登録' do
    it "name、email、passwordとpassword_confirmationが存在すれば登録できること" do
      expect(user).to be_valid
    end

    it "名がない場合、無効である" do
    user = build(:user, name: "")
    user.valid?
    expect(user.errors.messages[:name]).to include("を入力してください")
    end

    it "メールアドレスがない場合、無効である" do
    user = build(:user, email: "")
    user.valid?
    expect(user.errors.messages[:email]).to include("を入力してください")
    end

    it "重複したメールアドレスの場合、無効である" do
    user = create(:user, email: "same@example.com")
    other_user = build(:user, email: "same@example.com")
    other_user.valid?
    expect(other_user.errors.messages[:email]).to include("はすでに存在します")
    end

    it "パスワードがない場合、無効である" do
    user = build(:user, password: "")
    user.valid?
    expect(user.errors.messages[:password]).to include("を入力してください")
    end

    it "パスワードとパスワード確認用が一致しない場合、無効である" do
    user = build(:user, password: "123456", password_confirmation: "789012" )
    user.valid?
    expect(user.errors.messages[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    it "自己紹介が200文字以上の場合無効である" do
    user = build(:user, profile: "a" * 201 )
    user.valid?
    expect(user.errors.messages[:profile]).to include("は200文字以内で入力してください")
    end
  end
end