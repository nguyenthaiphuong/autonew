# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'securerandom'

user = ["admin", "vothanhluan", " cuong1010", "kunz0101", "crossark", "quanghuy31298", "sy1010",
	"khanh0712", "mgl2110", "kunaguero", "peaceminusone", "Crack156", "dat0101",
	"Tranbaoan1194", "Vothanhluan1325", " Liemvo2798", "tuananh123", "Milkyway96",
  "nguyen01", "nguyen02", "nguyen03", "nguyen04", "nguyen05", "nguyen06", "nguyen07", "nguyen08", "nguyen09"]

user.each do |n|
	User.create(name: n, password: SecureRandom.urlsafe_base64(8), dem: 0, is_login: false, block: 0)
end
