import { connect } from 'react-redux';
import Review from './review';
import { createReview } from '../../actions/home_actions';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = (state, ownProps) => ({
    currentUser: state.session.id,
    loggedIn: Boolean(state.session.id),
    homeId: ownProps.homeId,
    errors: state.errors.review
});

const mapDispatchToProps = dispatch => ({
    openModal: modal => dispatch(openModal(modal)),
    closeModal: () => dispatch(closeModal()),
    createReview: review => dispatch(createReview(review)),
});

export default connect(mapStateToProps, mapDispatchToProps)(Review);