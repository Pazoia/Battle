feature 'Attack confirmation' do 
  scenario 'the attack was confirmed' do 
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Paulo was attacked"
  end 

  scenario 'hp was deducted and displayed' do 
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Paulo HP:90"
  end 
end