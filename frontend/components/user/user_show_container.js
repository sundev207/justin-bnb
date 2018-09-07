import { connect } from 'react-redux';
// import { fetchReservations } from '../../actions/reservation_actions';
import { fetchHomes } from '../../actions/home_actions';
import {fetchUser } from '../../actions/user_actions';
import UserShow from './user_show';

const mapStateToProps = (state, ownProps) => {
  let user = state.entities.users[parseInt(ownProps["ownProps"].match.params.userId)];

  return ({
    // reservations: Object.values(state.entities.reservations),
    homes: Object.values(state.entities.homes),
    user: user
  });
};
const mapDispatchToProps = dispatch => ({
  // fetchReservations: () => dispatch(fetchReservations()),
  fetchHomes: () => dispatch(fetchHomes()),
  fetchUser: id => dispatch(fetchUser(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(UserShow);