# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name

event_list = [
  [ 1 , "New year", 15.day.from_now, "Every year", "Happy New Year!" ],
  [ 1 , "Theater", 1.month.ago, " ", "Boris Godunov" ],
  [ 2 , "Dentist", 34.day.from_now, " ", "Poor me" ],
  [ 2 , "Gym", 2.day.from_now, "Weekly", "Muscle!" ],
  [ 1 , "Store", 1.day.from_now, "Daily", "something to eat"],
  [ 2 , "Job", 3.day.from_now, "Daily", "At last!" ],
  [ 2 , "Study", 1.day.ago, "Daily", "Knowledge" ],
  [ 1 , "Friends", 2.day.ago, "Every month", "Don't get to drunk!" ],
  [ 2 , "Vacation", 6.month.from_now, "Every year", "Yay!" ],
  [ 1 , "BD", 10.month.from_now, "Every year", "Happy BD!" ]
]

event_list.each do |user_id, event_title, scheduled_at, recurrence, description|
  Event.create( user_id: user_id, event_title: event_title, scheduled_at: scheduled_at, recurrence: recurrence, description: description )
end
