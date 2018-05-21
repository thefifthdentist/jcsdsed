json.extract! course, :id, :Title, :Hours, :created_at, :updated_at
json.url course_url(course, format: :json)
