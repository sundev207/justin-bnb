import { connect } from 'react-redux';
import { signup, login, logout } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import Nav from './nav';

const mapStateToProps = ({ session }) => ({ 
    currentUser: session.id 
});

const mapDispatchToProps = dispatch => ({
    login: (user) => dispatch(login(user)),
    logout: () => dispatch(logout()),
    openModal: modal => dispatch(openModal(modal)),
    closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(Nav);