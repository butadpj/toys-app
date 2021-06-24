require 'rails_helper'

RSpec.describe 'PostingToys', type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'saves and displays the newly added toy' do
    visit '/my_toys/new'

    fill_in 'Name',	with: 'Some Toy'
    fill_in 'Description',	with: 'Description of that Toy'

    click_on 'Add a Toy'

    expect(page).to have_content('Some Toy')
    expect(page).to have_content('Description of that Toy')

    new_toy = MyToy.order('id').first
    expect(new_toy.name).to eq('Some Toy')
    expect(new_toy.description).to eq('Description of that Toy')
  end
end
