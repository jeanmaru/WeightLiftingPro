# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(fname:  "Admin User",
             email: "jess@jessrudolph.com",
             body_weight: "160",
             gender: "Female",
             level: "Beginner",
             measure: "lbs",
             dob: '1989-06-10',
             password:              "password1234",
             password_confirmation: "password1234",
             admin: true)

User.create!(fname:  "Jess",
             email: "jam.rudolph@gmail.com",
             body_weight: "160",
             gender: "Female",
             level: "Beginner",
             measure: "lbs",
             dob: '1983-03-30',
             password:              "password",
             password_confirmation: "password",
             admin: false)

# 99.times do |n|
#   name  = Faker::Name.name
#   email = "jess-#{n+1}@jessrudolph.com"
#   password = "password"
#   User.create!(fname:  name,
#                email: email,
#                password:              password,
#                password_confirmation: password)



sample_exercise_list = [
     "Squat",
     "Deadlift",
     "Bench Press",
     "Leg Press (Individual)",
     "Leg Press (Together)",
     "Leg Extension (Individual)",
     "Leg Extension (Together)",
     "Leg Curl (Individual)",
     "Leg Curl (Together)",
     "Standing Calf Raise",
     "Bent-Over Row",
     "Bicep Curls (Individual)",
     "Bicep Curls (w/ Bar)",
     "Chest Fly (Dumbbells)",
     "Chest Fly (Marchine)",
     "Chest Press (Dumbbells)",
     "Chest Press (Machine)",
     "Front Raises",
     "Lateral Arm Raises",
     "Rear Delt Row",
     "Chest Reverse Fly",
     "Seated Rows",
     "Tricep Extension - Overhead (Seated)",
     "Tricep Extension - Overhead (Standing)",
     "Shoulder Press / Overhead Press",
     "Shoulder Shrug",
     "Skull Crushers",
     "Upright Row",
     "Back Extension",
     "Lat Pulldown",
     "Lunges",
     "Seated Calf Raise",
     "Hip Adductor",
     "Shoulder Fly",
     "Hammer Curls",
     "Kneeling Row",  
     "Dumbbell Pullover",
     "Power Clean",
     "Clean and Press",
     "Tricep Dips",
     "Tricep Extension (Machine)",
     "Hip Abductor",
     "Tricep Kickbacks - Dumbbell"
]

sample_exercise_list.each do |name|
  SampleExercise.create( name: name  )
end















# sample_exercise_list = [
#      "Power Clean",
#      "Clean and Press",
#      "Pull Ups"
# ]
# 
# sample_exercise_list.each do |name|
#   SampleExercise.create( name: name  )
# end



# sample_exercise_list = [
#      "Tricep Dips",
#      "Tricep Extension (Machine)",
#      "Hip Abductor",
#      "Tricep Kickbacks - Dumbbell"
# 
# ]
# 
# sample_exercise_list.each do |name|
#   SampleExercise.create( name: name  )
# end