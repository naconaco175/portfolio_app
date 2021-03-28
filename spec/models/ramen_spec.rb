require 'rails_helper'

RSpec.describe Ramen, type: :model do
  describe '投稿機能' do
    it "store、comment、photoが存在すれば登録できること" do
      ramen = build(:ramen)
      expect(ramen).to be_valid
    end

    it "storeがない場合、無効である" do
      ramen = build(:ramen, store: "")
      ramen.valid?
      expect(ramen.errors.messages[:store]).to include("を入力してください")
    end

    it "commentがない場合、無効である" do
      ramen = build(:ramen, comment: "")
      ramen.valid?
      expect(ramen.errors.messages[:comment]).to include("を入力してください")
    end

    it "photoがない場合、無効である" do
      ramen = create(:ramen)
      ramen.photo.destroy
      ramen.valid?
      expect(ramen.errors.messages[:photo]).to include("画像を添付してください")
    end

    it "storeが20文字以上の場合無効である" do
      ramen = build(:ramen, store: "a" * 21 )
      ramen.valid?
      expect(ramen.errors.messages[:store]).to include("は20文字以内で入力してください")
    end

    it "priceが20文字以上の場合無効である" do
      ramen = build(:ramen, price: 1234567 )
      ramen.valid?
      expect(ramen.errors.messages[:price]).to include("は6文字以内で入力してください")
    end

    it "product_nameが20文字以上の場合無効である" do
      ramen = build(:ramen, product_name: "a" * 21 )
      ramen.valid?
      expect(ramen.errors.messages[:product_name]).to include("は20文字以内で入力してください")
    end

    it "commentが200文字以上の場合無効である" do
      ramen = build(:ramen, comment: "a" * 201 )
      ramen.valid?
      expect(ramen.errors.messages[:comment]).to include("は200文字以内で入力してください")
    end

  end
end
