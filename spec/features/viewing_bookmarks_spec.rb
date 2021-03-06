feature 'Viewing Bookmarks' do 
  scenario 'A user can see bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content "http://www.makers.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"  
  end
end