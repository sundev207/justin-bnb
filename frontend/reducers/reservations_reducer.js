import merge from "lodash/merge";

import { RECEIVE_RESERVATION } from "../actions/reservation_actions";
import { RECEIVE_HOME } from "../actions/spot_actions";

const reservationsReducer = (state = {}, action) => {
    Object.freeze(state);
    let newState = merge({}, state);

    switch (action.type) {
        case RECEIVE_HOME:
            return merge(newState, action.reservations);
        case RECEIVE_RESERVATION:
            return merge(newState, {[action.reservation.id]: action.reservation});
        default:
            return state;
    }
};

export default reservationsReducer;