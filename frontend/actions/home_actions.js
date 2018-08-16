import * as HomeApiUtil from '../util/home_api_utli';

export const RECEIVE_HOMES = 'RECEIVE_HOMES';
export const RECEIVE_HOME = 'RECEIVE_HOME';
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';

export const receiveHomes = homes => ({
    type: RECEIVE_HOMES,
    homes
});

export const receiveHome = payload => ({
    type: RECEIVE_HOME,
    home: payload.home,
    reviews: payload.reviews,
    users: payload.users

});

export const receiveReview = payload => ({
    type: RECEIVE_REVIEW,
    review: payload.review,
    user: payload.user

});

export const fetchHomes = () => dispatch => (
    HomeApiUtil.fetchHomes().then(homes => dispatch(receiveHomes(homes)))
);

export const fetchHome = id => dispatch => (
    HomeApiUtil.fetchHome(id).then(payload => (
        dispatch(receiveHome(payload))
    ))
);

export const createReview = review => dispatch => (
    HomeApiUtil.createReview(review).then(newReview => (
        dispatch(receiveReview(newReview))
    ))
);