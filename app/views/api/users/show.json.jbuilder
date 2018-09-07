json.user do
  json.partial! "api/users/user", user: @user
  json.reservations @user.reservations
end
