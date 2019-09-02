# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

USER_NAMES =
  [{"name"=>'larry'}, {"name"=> 'steve'}]

ARTWORKs =
  ['art1', 'art2', 'art3']

ARTWORK_SHARES =
  ['share1', 'share2', 'share3']

users = []
artworks = []
shares = []

USER_NAMES.each do |user|
  users << User.new(user["name"])  
end

# ARTWORKs.each do |artwork|
#   artworks << Artwork.new(artwork)  
# end

# ARTWORK_SHARES.each do |share|
#   shares << ArtworkShare.new(share)  
# end

users.each {|user| user.save!}
# artworks.each {|artwork| artwork.save!}
# shares.each {|share| share.save!}