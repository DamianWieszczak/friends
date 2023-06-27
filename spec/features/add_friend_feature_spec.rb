describe 'Add new friend' do
  before do
    visit '/'
  end

  it 'Adds new friend' do
    click_link 'New friend'
    expect(page).to have_content('New friend')

    fill_in 'friend_name', with: 'John'
    fill_in 'friend_surname', with: 'Doe'
    fill_in 'friend_email', with: 'jdoe@example.com'
    select 'school', from: 'friend[meeting_place]'
    click_button 'Create Friend'

    expect(page).to have_content('card')
    expect(page).to have_content('John')
    expect(page).to have_content('school')

    click_link 'Back'
    expect(page).to have_content 'John'
    expect(page).to have_link('New friend')
  end
end