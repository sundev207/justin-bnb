import { connect } from 'react-redux';
import { fetchReservations } from '../../actions/reservation_actions';
import UserShow from './user_show';

const mapStateToProps = (state) => ({
  reservations: Object.values(state.entities.reservations)
});

const mapDispatchToProps = dispatch => ({
  fetchReservations: () => dispatch(fetchReservations())
});

export default connect(mapStateToProps, mapDispatchToProps)(UserShow);