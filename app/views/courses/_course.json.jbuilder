json.extract! course, :id, :title, :description, :instructor_id, :duration, :price, :start_date, :end_date, :course_type, :created_at, :updated_at
json.url course_url(course, format: :json)
