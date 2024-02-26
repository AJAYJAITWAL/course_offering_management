User.create(email: 'student@example.com', password: 'password', role: 0)
User.create(email: 'instructor@example.com', password: 'password', role: 1)
User.create(email: 'admin@example.com', password: 'password', role: 2)

course_titles = [
  "Introduction to Math",
  "Science Fundamentals",
  "History of Civilization",
  "Art Appreciation",
  "Literature Essentials",
  "Programming Basics",
  "Advanced Mathematics",
  "Biology for Beginners",
  "World History",
  "Modern Art"
]

course_descriptions = [
  "This course provides an introduction to basic mathematical concepts.",
  "Explore the fundamentals of science in this comprehensive course.",
  "Discover the history of human civilization from ancient times to the present.",
  "Appreciate the beauty and significance of art through the ages.",
  "Gain essential knowledge of literature from various cultures and periods.",
  "Learn the basics of programming and computer science.",
  "Dive deeper into advanced mathematical topics and problem-solving techniques.",
  "A beginner-friendly course covering the basics of biology and life sciences.",
  "Explore key events and developments in world history.",
  "Discover modern art movements and influential artists."
]

course_types = ['Math', 'Science', 'History', 'Art', 'Literature', 'Programming']
date_range = (Date.today.to_time.to_i..1.year.from_now.to_time.to_i)

10.times do
  Course.create(
    title: course_titles.sample,
    description: course_descriptions.sample,
    instructor_id: User.find_by_email("instructor@example.com").id,
    duration: rand(1.0..10.0).round(2),
    price: rand(10.0..100.0).round(2),
    start_date: Time.at(rand(date_range)),
    end_date: Time.at(rand(date_range)),
    course_type: course_types.sample
  )
end

