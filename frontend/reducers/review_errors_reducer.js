import { RECEIVE_REVIEW, RECEIVE_ERRORS } from '../actions/home_actions';

const _nullErrors = [];

export default (state = _nullErrors, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_ERRORS:
            return action.errors;
        case RECEIVE_REVIEW:
            return _nullErrors;
        default:
            return state;
    }
};