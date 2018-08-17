import * as ReservationApiUtil from '../util/reservation_api_util';

export const RECEIVE_RESERVATION = 'RECEIVE_RESERVATION';

export const receiveReservation = payload => ({
    type: RECEIVE_RESERVATION,
    reservation: payload.reservation
});

export const createReservation = reservation => dispatch => (
    ReservationApiUtil.createBooking(reservation).then(newReservation => (
        dispatch(receiveReservation(newReservation))
    ))
);