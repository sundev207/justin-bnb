json.home do
  json.partial! '/api/homes/home', home: @home
  json.reviewIds @home.reviews.pluck(:id)
  json.reservationIds @home.reservations.pluck(:id)
  json.photoUrl @home.photo.attached? ? url_for(@home.photo) : nil
end

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
