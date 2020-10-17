# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Nomad', password: 'password')
User.create(username: 'Jack', password: 'password')
User.create(username: 'Stacy', password: 'password')
Message.create(content: 'Hi, there!', user_id: User.first.id)
Message.create(content: 'Oh, hi. How are u?', user_id: User.last.id)
Message.create(content: 'Thanks, I am fine!', user_id: User.first.id)
