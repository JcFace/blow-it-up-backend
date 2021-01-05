# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.create(username: Faker::Name.unique.name, is_client: false, bio: Faker::Hipster.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4), img_url: "Not and actual Url")
User.create(username: Faker::Name.unique.name, is_client: false, bio: Faker::Hipster.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4), img_url: "Not and actual Url")
User.create(username: Faker::Name.unique.name, is_client: false, bio: Faker::Hipster.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4), img_url: "Not and actual Url")
User.create(username: Faker::Name.unique.name, is_client: false, bio: Faker::Hipster.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4), img_url: "Not and actual Url")

p1 = ArtPiece.create(name: "Cool Thing", img_url: "A Url", price: "$10.99", user_id: 2)
