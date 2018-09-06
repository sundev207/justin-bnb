import * as ReservationApiUtil from '../util/reservation_api_util';

export const RECEIVE_RESERVATION = 'RECEIVE_RESERVATION';
export const RECEIVE_RESERVATIONS = 'RECEIVE_RESERVATIONS';

export const receiveReservation = payload => ({
  type: RECEIVE_RESERVATION,
  reservation: payload.reservation
});

export const receiveReservations = reservations => ({
  type: RECEIVE_RESERVATIONS,
  reservations
});

export const createReservation = reservation => dispatch => (
  ReservationApiUtil.createReservation(reservation).then(payload => (
    dispatch(receiveReservation(payload))
  ))
);

export const fetchReservations = () => dispatch => (
  ReservationApiUtil.fetchReservations().then(reservations => 
    dispatch(receiveReservations(reservations)))
);

// export const fetchReservation = id => dispatch => (
//     ReservationApiUtil.fetchReservation(id).then(payload => 
//         dispatch(receiveReservation(payload))
//     )
// );