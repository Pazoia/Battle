feature 'Enter name' do
  scenario "submitting names" do
    visit ('/')
    fill_in :player_1_name, with: "Coding Course"
    fill_in :player_2_name, with: "Paulo"
    click_button "Submit"
    expect(page).to have_content "Coding Course vs. Paulo"
    
  end
end