import { connect } from 'react-redux';
import { fetchReservations } from '../../actions/reservation_actions';
import { fetchHomes } from '../../actions/home_actions';
import UserShow from './user_show';

const mapStateToProps = (state) => ({
  reservations: Object.values(state.entities.reservations),
  homes: Object.values(state.entities.homes)
});

const mapDispatchToProps = dispatch => ({
  fetchReservations: () => dispatch(fetchReservations()),
  fetchHomes: () => dispatch(fetchHomes()),
  fetchUser: id => dispatch(fetchUser(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(UserShow);