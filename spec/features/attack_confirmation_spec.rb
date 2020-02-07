feature 'Attack confirmation' do 
  scenario 'the attack was confirmed' do 
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Joe was attacked by Paulo"
  end 

  scenario 'hp was deducted and displayed' do 
    sign_in_and_play
    click_button "Attack"
    # click_link "OK"
    expect(page).not_to have_content "Joe: 60HP"
    expect(page).to have_content "Joe: 50HP"
  end 
end