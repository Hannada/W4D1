# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#

class User < ApplicationRecord
  validates :users, :username ,presence: true

  has_many :shares,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare 
  
  has_many :artworks,
    foreign_key: :artist_id,
    class_name: :Artwork 
end
