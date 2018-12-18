# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  name:  "ha4gu",
  email: "ha4gu@example.com",
  image_name: "iconfinder_12_avatar_2754577.png",
  password:              "foobar",
  # password_confirmation: "foobar",
  #admin: true
)

User.create(
  name:  "Hoge",
  email: "hoge@example.com",
  image_name: "iconfinder_3_avatar_2754579.png",
  password:              "foobar",
  # password_confirmation: "foobar",
  #admin: true
)

User.create(
  name:  "Fuga",
  email: "fuga@example.com",
  image_name: "iconfinder_9_avatar_2754584.png",
  password:              "foobar",
  # password_confirmation: "foobar",
  #admin: true
)
