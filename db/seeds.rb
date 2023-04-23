# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.create!(
   name: "ケーキ",
)

Genre.create!(
   name: "焼菓子",
)

Genre.create!(
   name: "チョコレート",
)

Genre.create!(
   name: "プリン",
)

Genre.create!(
   name: "パン",
)

Genre.create!(
   name: "アイスクリーム",
)

Genre.create!(
   name: "その他",
)

Admin.create!(
   email: "email@email", password: "password"
)