import merge from 'lodash/merge';

import { RECEIVE_HOME } from '../actions/home_actions';

const photosReducer = (state = {}, action) => {
    Object.freeze(state);
    let newState = merge({}, state);
    switch (action.type) {
        case RECEIVE_HOME:
            return merge(newState, action.photo);
        default:
            return state;
    }
};

export default photosReducer;