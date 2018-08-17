import merge from 'lodash/merge';

import { RECEIVE_HOME, RECEIVE_REVIEW, UPDATE_REVIEW, REMOVE_REVIEW } from '../actions/home_actions';

const reviewsReducer = (state = {}, action) => {
    Object.freeze(state);
    let newState = merge({}, state);
    
    switch (action.type) {
        case RECEIVE_HOME:
            return merge({}, state, action.reviews);
        case RECEIVE_REVIEW:
            const { review } = action;
            return merge({}, state, {
                [review.id]: review
            });
        case UPDATE_REVIEW:
            break;
        case REMOVE_REVIEW:
            break;
        default:
            return state;
    }
};

export default reviewsReducer;