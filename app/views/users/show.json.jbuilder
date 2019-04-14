json.user do |json|
  json.partial! 'users/user', user: current_user
  json.jwt current_user.generate_jwt
end
