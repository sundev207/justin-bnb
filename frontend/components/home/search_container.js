import { connect } from 'react-redux';
import {fetchHomes} from '../../actions/home_actions';
import { updateFilter } from '../../actions/filter_actions';
import Search from './search';

const mapStateToProps = (state) => ({
    homes: Object.values(state.entities.homes),
    center: { lat: 37.7758, lng: -122.435 },
});

const mapDispatchToProps = dispatch => ({
    fetchHomes: () => dispatch(fetchHomes()),
});

export default connect(mapStateToProps, mapDispatchToProps)(Search);