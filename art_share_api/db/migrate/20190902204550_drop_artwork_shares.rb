class DropArtworkShares < ActiveRecord::Migration[5.2]
  def up
    drop_table :artwork_shares
  end
end
