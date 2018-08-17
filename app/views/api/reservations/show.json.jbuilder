json.reservation do
  json.partial! '/api/reservation/reservation', reservation: @reservation
end