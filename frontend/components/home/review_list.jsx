import React from 'react';
import { ReviewListItem } from './review_list_item';

class ReviewList extends React.Component {
    constructor(props){
        super(props);
    }

    render() {
        if (!this.props.reviews) return null;
        let { reviews, users } = this.props;

        return (
            <div className="review-top-container">
                <div className="review-summary">
                    <div className="review-count-container">
                        <span>{reviews.length} Reviews</span>
                    </div>
                    <div className="avg-stars">
                        <i className="fas fa-star fa-xs"></i>
                        <i className="fas fa-star fa-xs"></i>
                        <i className="fas fa-star fa-xs"></i>
                        <i className="fas fa-star fa-xs"></i>
                        <i className="fas fa-star fa-xs"></i>
                    </div>
                </div>
                <ul className="review-list">
                    {reviews.map(review => (
                        <ReviewListItem 
                            key={review.id}
                            review={ review }
                            user={ users[review.user_id] }
                            //some delete and edit buttons later
                        />
                    ))}
                </ul>
            </div>
        );
    }
}

export default ReviewList;