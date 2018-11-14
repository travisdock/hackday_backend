# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = Admin.create(name: "chris", password: "1234")
biology = Course.create(name: "biology")
asset1 = Asset.create(title: "bugs of the mid-west", description: "obviously bug stuff", link: "bugs.cool.midwest.com", votes: 0, accepted: true)
asset2 = Asset.create(title: "animals my mother is afraid of", description: "really great info on creepy crawlies", link: "creepy.crawlies.com", votes: 0)
asset3 = Asset.create(title: "things with four legs", description: "everything you need to know about things with four legs", link: "four.legs.com", votes: 0)
biology.assets << asset1
biology.assets << asset2
biology.assets << asset3

