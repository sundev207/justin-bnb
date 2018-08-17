import { connect } from 'react-redux';
import ReviewList from './review_list';

const mapStateToProps = ({entities: { reviews, users }}) => ({
    reviews: Object.values(reviews),
    users
});

const mapDispatchToProps = dispatch => ({

});

export default connect(mapStateToProps, mapDispatchToProps)(ReviewList);