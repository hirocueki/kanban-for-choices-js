require 'rails_helper'

RSpec.describe 'Tasks', type: :system do
  let!(:board) { create(:board) }
  let!(:member) { create(:member, name: 'チョイ・スー') }

  it 'メンバーをアサインできる', js: true do
    visit new_board_task_path(board)

    find('.choices').click
    first('.choices__item').click

    within find('.choices') do
      expect(page).to have_content member.name
    end
  end

  it 'タスクを追加できる', js: true do
    visit new_board_task_path(board)

    fill_in 'Title', with: 'Qiita記事を書く'
    fill_in 'Content', with: 'Choices.jsの使い方を紹介します'

    # リストを展開
    first('.choices').click
    # リストアイテムを選択
    first('.choices__item').click
    # リストを閉じるためEsc送信
    find('#task_title').send_keys :escape

    expect do
      click_on 'Create Task'
    end.to change { Task.count }.by(1)
  end
end
