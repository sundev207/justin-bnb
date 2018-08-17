import { connect } from 'react-redux';
import ReviewList from './review_list';

const mapStateToProps = ({entities: { reviews, users }}, ownProps) => ({
    reviews: Object.values(reviews).filter(review => review.home_id == ownProps.homeId),
    users
});

const mapDispatchToProps = dispatch => ({

});

export default connect(mapStateToProps, mapDispatchToProps)(ReviewList);