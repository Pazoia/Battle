feature 'check hp' do 
  scenario "see player hp" do
    sign_in_and_play
    expect(page).to have_content "Paulo HP:100"
  end 
end 