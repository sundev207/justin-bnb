import React from 'react';
import { ReviewListItem } from './review_list_item';

class ReviewList extends React.Component {
    constructor(props){
        super(props);
    }

    render() {
        if (!this.props.reviews) return null;
        let { reviews } = this.props;

        return (
            <div>
                <ul>
                    {reviews.map(review => (
                        <ReviewListItem 
                            key={review.id}
                            review={ review }
                            //some delete and edit buttons later
                        />
                    ))}
                </ul>
            </div>
        );
    }
}

export default ReviewList;