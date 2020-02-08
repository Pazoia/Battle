feature 'check hp' do 
  scenario "see player hp" do
    sign_in_and_play
    expect(page).to have_content "Paulo: 60 Points"
    expect(page).to have_content "Joe: 60 Points"
  end 
end 