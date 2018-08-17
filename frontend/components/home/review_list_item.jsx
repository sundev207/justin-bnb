import React from 'react';

export const ReviewListItem = ({ review, user }) => {

    return(
        <div className="single-review-container">
            <div className="author-container">
                <span>{user.email}</span>
            </div>
            <div className="star-rating">
                <i className="fas fa-star fa-xs"></i>
                <i className="fas fa-star fa-xs"></i>
                <i className="fas fa-star fa-xs"></i>
                <i className="fas fa-star fa-xs"></i>
                <i className="fas fa-star fa-xs"></i>
            </div>
            <div className="review-body">
                <div className="text">
                    {review.body}
                </div>
            </div>
        </div>
    );

};