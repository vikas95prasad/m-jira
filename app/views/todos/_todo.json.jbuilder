# json.extract! todo, :id, :title, :description, :due_date, :status, :developer_id, :project_id, :created_at, :updated_at
# json.url todo_url(todo, format: :json)

# json.todo do |json|
#   json.id todo.id
#   json.developer todo.developer&.email
# end
json.todo @todos do |todo|
  json.id todo.id
  # json.name todo.name
  # json.label todo.label
end
