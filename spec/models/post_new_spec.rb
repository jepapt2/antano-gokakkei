require 'rails_helper'

RSpec.describe Post, type: :model do

  it "データが揃っている場合有効である" do
    expect(FactoryBot.create(:post)).to be_valid
  end
  
   it "投稿者名、説明、タグが無い場合でも有効である" do
    expect(FactoryBot.create(:post, name: "", overview: "", tag_list: "")).to be_valid
  end
  
  it "タイトルが無い場合無効である" do
    expect(FactoryBot.build(:post, title: "")).to_not be_valid
  end
  
  it "ラベルが欠けている場合無効である" do
    expect(FactoryBot.build(:post, label1: "")).to_not be_valid
  end
  
  it "数値が欠けている場合無効である" do
    expect(FactoryBot.build(:post, value1: "")).to_not be_valid
  end
  
  it "色が無い場合無効である" do
    expect(FactoryBot.build(:post, bgcolor: "")).to_not be_valid
  end
  
  it "タイトルが20文字以上の場合無効である" do
    expect(FactoryBot.build(:post, title: "testtesttesttesttesttesttesttesttesttesttesttest")).to_not be_valid
  end
  
end