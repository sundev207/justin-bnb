class Api::ReviewsController < ApplicationController
    before_action :require_logged_in

    def create
        @review = Review.new(review_params)
        @review.user_id = current_user.id

        if @review.save
            render :show
        else
            render json: @review, status: :unprocessable_entity
        end
    end

    private
    def review_params
        params.require(:review).permit(:rating, :body, :home_id, :user_id)
    end
end
