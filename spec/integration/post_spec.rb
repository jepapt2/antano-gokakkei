require 'rails_helper'

feature 'Post', type: :feature do
  
  scenario '投稿ページに移動' do
  visit root_path
  
  click_link '投稿'
  
  expect(page).to have_content('半角コンマで区切って入力（例：ゲーム,アニメ,キャラクター）')
  end
  
  # scenario 'テストデータを投稿' do

  #   visit new_post_path
  #   expect(current_path).to eq new_post_path
  #   fill_in 'タイトル', with: 'テスト'
  #   fill_in 'post_label1', with: 'ラベル1'
  #   fill_in 'post_label2', with: 'ラベル2'
  #   fill_in 'post_label3', with: 'ラベル3'
  #   fill_in 'post_label4', with: 'ラベル4'
  #   fill_in 'post_label5', with: 'ラベル5'
  #   fill_in 'post_name', with:'testmen'
  #   choose '緑'
    
  #   # expect{
  #     click_button '投稿'
  #   # }.to 
  #   expect(page).to have_content('を入力してください')
  # end
  
  scenario '検索' do
    visit root_path
    fill_in 'search-field', with: 'テスト'
    click_button 'submit'
    expect(page).to have_content('検索結果：テスト')
  end
  
end