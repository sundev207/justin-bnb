@homes.each do |home|
  json.set! home.id do
    json.partial! 'home', home: home
    json.photoUrl home.photo.attached? ? url_for(home.photo) : nil
    json.reviewIds []
  end
end