json.user do
  json.partial! "api/users/user", user: @user
  json.reservationHomeIds @user.reservations.pluck(:home_id)
end
