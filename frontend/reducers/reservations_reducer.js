import merge from "lodash/merge";

import { RECEIVE_RESERVATION } from "../actions/reservation_actions";
// import { RECEIVE_CURRENT_USER } from "../actions/session_actions";
import { RECEIVE_HOME } from "../actions/spot_actions";

const reservationsReducer = (state = {}, action) => {
    Object.freeze(state);
    let newState = merge({}, state);

    switch (action.type) {
        case RECEIVE_HOME:
            return merge(newState, action.reservations);
        case RECEIVE_RESERVATION:
            return merge(newState, {[action.reservation.id]: action.reservation});
        // case RECEIVE_CURRENT_USER:
        //     const reservations = action.payload ? action.payload.reservations : null;
        //     return merge(newState, reservations);
        default:
            return state;
    }
};

export default reservationsReducer;