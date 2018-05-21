json.extract! student, :id, :First_Name, :Last_Name, :Age, :Education, :created_at, :updated_at
json.url student_url(student, format: :json)
