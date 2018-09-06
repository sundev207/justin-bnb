import { connect } from 'react-redux';
import { fetchHome, fetchHomes } from '../../actions/home_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import { createReservation } from '../../actions/reservation_actions';
import HomeShow from './home_show';

const mapStateToProps = (state, ownProps) => {

  return ({
      currentUser: state.session.id,
      homeId: parseInt(ownProps["ownProps"].match.params.homeId),
      home: state.entities.homes[parseInt(ownProps["ownProps"].match.params.homeId)],
      reservations: Object.values(state.entities.reservations)
  });
};


const mapDispatchToProps = dispatch => ({
    createReservation: reservation => dispatch(createReservation(reservation)),
    fetchHome: id => dispatch(fetchHome(id)),
    openModal: modal => dispatch(openModal(modal)),
    closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(HomeShow);