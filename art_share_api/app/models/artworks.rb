# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#

class Artworks < ApplicationRecord
    belongs_to :artist,
      foreign_key: :artist_id,
      class_name: :User 
    
    has_many :shares,
      foreign_key: :artwork_id,
      class_name: :ArtworkShare

end
