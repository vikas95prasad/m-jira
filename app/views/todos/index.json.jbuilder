json.todos @todos do |todo|
  json.id todo.id
  json.title todo.title
  json.description todo.description
  json.due_date todo.due_date
  json.status todo.status
  json.developer todo.developer&.email
  json.project todo.project&.name
  json.created_at todo.created_at
  json.updated_at todo.updated_at
end
