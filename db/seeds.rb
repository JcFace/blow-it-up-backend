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

u1 = User.create(full_name: 'Randy Strong', email: '123@bam.com', password: 'password', is_client: false, img_url: "http://www.rstrong.com/wp-content/uploads/2012/05/randy_strong.jpg", bio: "Winner of the juried 2005 and 2008 Niche award for blown glass and finalist for 2010 – awarded by Niche magazine for the best of blown glass in the United States – Randy Strong – artist and designer in hot glass for 40 years, has worked continuously throughout his career producing innovative designs in glass that continually influence the ever changing and growing community of studio glass artists. Randy’s work through the last 4 decades has been characterized by the use of difficult, defining techniques, materials, colors and forms. His newest sculptural work again breaks new ground by challenging the concept of solid form in glass by further expressing its personality in lightness and movement.", lat: 38.373095, lng: -122.796544)
u2 = User.create(full_name: 'Bryan Goldenberg',email: '456@bam.com', password: 'password', is_client: false, bio: 'Originally from St. Louis, I moved to Oakland, CA and earned a BFA in glass concentration from California College of Arts & Crafts in 2002. During the course of my training, I toured the world exploring studios from Inferno Glass Studio in New Orleans, to Pilchuck Glass School in Seattle, to studios in Murano, Italy. It has been my honor to blow glass with widely renowned glass artists such as Dante Marioni, Lino Tagliapietra, Hank Adams, and Clifford Rainey.

In 2006, I designed and built Slow Burn Glass, a studio in Oakland, California where I created my work until July 2018. Slow Burn Glass then expanded into a 5000-square-foot facility in Richmond, CA. Here I have excelled in many forms and styles which feature clean lines and superior craftsmanship. Using my past experiences to influence these styles, I dedicate time to developing my own colors that transform into one-of-a-kind works of art.

Currently my work can be seen in premier glass art galleries and museums across America. I was the featured artist at a solo-show at the Wynn Hotel, Las Vegas, Nevada in June 2007, and returned again for a solo shows in October 2008 & 2010. As an active member of the American Craft Council, and with multiple features publications and media shows, I have been called “One of the most up and coming contemporary artists of our time”.', img_url: "https://www.slowburnglass.com/wp-content/uploads/2019/01/bryan.jpg", lat: 37.9204296, lng: -122.3521971)
u3 = User.create(full_name: 'Zak Timan',email: '789@bam.com', password: 'password', is_client: false, bio: "Zak Timan is based out of San Francisco, California and received his education at California College of the Arts. He has been featured in several exhibits such as Museum of Art And Design, New York, Bedford Gallery, Walnut Creek, CA, CENART, Mexico City, Mexico, Palazzo Cavalli Franchetti, Venice, Italy, and the American International Fine Art Fair - Palm Beach, FL. He currently holds a residency at Tacoma Museum of Glass.", img_url: "https://s3-media0.fl.yelpcdn.com/bphoto/yO8QeiNvNDNFbis3IxMPoQ/o.jpg", lat: 37.9130451, lng: -122.327782)
p1 = ArtPiece.create(name: "Cool Thing", img_url: "http://www.handblownglass.com/images/products/dw1312-054-n1459-lg3.jpg", creator_name: u2.full_name, description: "It's a real cool thing", owned: false)
p2 = ArtPiece.create(name: "Not A Cool Thing", img_url: "Some Url", creator_name: u3.full_name, description: "It's not a real cool thing", owned: false)
p3 = ArtPiece.create(name: "Another Cool Thing", img_url: "The Url", creator_name: u2.full_name, description: "It's a real cool thing", owned: false)

