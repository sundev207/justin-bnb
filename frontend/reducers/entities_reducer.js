import { combineReducers } from 'redux';
import users from './users_reducer';
import homes from './homes_reducer';
import reviews from './reviews_reducer';

export default combineReducers({
	users,
	homes,
	reviews
});