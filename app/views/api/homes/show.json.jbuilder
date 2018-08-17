json.home do
  json.partial! '/api/homes/home', home: @home
  json.reviewIds @home.reviews.pluck(:id)
  json.photoUrl @home.photo.attached? ? url_for(@home.photo) : nil
end

# json.photo do
#   json.set! @home.photo.id do
#     json.id @home.photo.id
#     json.url url_for(@home.photo)
#   end
# end

@home.reviews.each do |review|
  json.reviews do
    json.set! review.id do
      json.partial! 'api/reviews/review', review: review
    end
  end

  json.users do
    json.set! review.user.id do
      json.extract! review.user, :id, :email, :first_name, :last_name
    end
  end
end
