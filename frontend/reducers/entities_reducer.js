import { combineReducers } from 'redux';
import users from './users_reducer';
import homes from './homes_reducer';
import reviews from './reviews_reducer';
import photos from './photos_reducer';
import reservations from './reservations_reducer';

export default combineReducers({
	users,
	homes,
	reviews,
  photos,
  reservations
});