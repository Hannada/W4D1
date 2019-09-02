class CreateArtworkUpdate < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :title, :string, null: false
    add_column :artworks, :image_url, :string, null: false
    add_column :artworks, :artist_id, :integer, null: false  
    
    add_index :artworks, :artist_id, :unique => true  
    add_index :artworks, :title, :unique => true
  end
end
