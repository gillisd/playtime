# == Schema Information
#
# Table name: wishlist_items
#
#  id            :integer          not null, primary key
#  quantity      :integer
#  priority      :string
#  wishlist_id   :integer
#  item_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  staff_message :text
#

describe WishlistItem do
  describe "without an associated wishlist" do
    subject { build(:wishlist_item, wishlist: nil) }
    it { should_not be_valid }
  end

  describe "without an associated item" do
    subject { build(:wishlist_item, item: nil) }
    it { should_not be_valid }
  end
end
