feature 'Attack confirmation' do 
  scenario 'the attack was confirmed' do 
    sign_in_and_play
    click_button "Attack Player 2"
    expect(page).to have_content "Paulo was attacked"
  end 
end