import merge from "lodash/merge";

import { RECEIVE_RESERVATION, RECEIVE_RESERVATIONS } from "../actions/reservation_actions";
import { RECEIVE_HOME } from "../actions/home_actions";

const reservationsReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);

  switch (action.type) {
    case RECEIVE_HOME:
      return merge(newState, action.reservations);
    case RECEIVE_RESERVATION:
      return merge(newState, {
        [action.reservation.id]: action.reservation
      });
    case RECEIVE_RESERVATIONS:
      return action.reservations;
    default:
      return state;
  }
};

export default reservationsReducer;