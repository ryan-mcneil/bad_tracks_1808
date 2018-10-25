require 'rails_helper'

describe 'add a song to cart' do
  context 'as an unregistered user' do
    it 'adds a new song' do

      song_1 = create(:song)
      visit songs_path

      click_on "Add to Cart"

      expect(page).to have_content("Added Song to Cart")

      click_on "View Cart"

      expect(current_path).to eq(cart_path)
      expect(page).to have_content(song_1.title)
    end
  end
end
