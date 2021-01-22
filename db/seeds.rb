# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.delete_all
ArtPiece.delete_all

u1 = User.create(full_name: 'James Garrison', email: '123@bam.com', password: 'password', is_client: true)
u2 = User.create(full_name: 'James Patrickson',email: '456@bam.com', password: 'password', is_client: false)
u3 = User.create(full_name: 'James Madison',email: '789@bam.com', password: 'password', is_client: false)
p1 = ArtPiece.create(name: "Cool Thing", img_url: "A Url", creator_name: u2.full_name, description: "It's a real cool thing", owned: false)
p2 = ArtPiece.create(name: "Not A Cool Thing", img_url: "Some Url", creator_name: u3.full_name, description: "It's not a real cool thing", owned: false)
p3 = ArtPiece.create(name: "Another Cool Thing", img_url: "The Url", creator_name: u2.full_name, description: "It's a real cool thing", owned: false)

