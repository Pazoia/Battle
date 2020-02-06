feature 'check hp' do 
  scenario "see player hp" do 
    visit ('/')
    fill_in :player_1_name, with: "Joe"
    fill_in :player_2_name, with: "Paulo"
    click_button "Submit"
    expect(page).to have_content "Paulo HP:100"
  end 
end 