require 'spec_helper'

describe 'Authorization', type: :feature do
  let(:user) { create :user }

  before :each do
    login_as user
  end

  it 'correctly rejects unauthorized access' do
    answer = create :answer

    visit shared.label_answer_path(answer, value: :helpful)

    expect(current_path).to eql(shared.root_path)
    expect(page).to have_content('Nemáte právo na vykonanie tejto akcie.')
  end
end
