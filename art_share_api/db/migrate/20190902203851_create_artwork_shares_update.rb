class CreateArtworkSharesUpdate < ActiveRecord::Migration[5.2]
  def change
    add_column :artwork_shares, :artwork_id, :integer, null: false
    add_column :artwork_shares, :viewer_id, :integer, null: false
    
    add_index :artwork_shares, :artwork_id, :unique => true 
    add_index :artwork_shares, :viewer_id, :unique => true 
  end
end
