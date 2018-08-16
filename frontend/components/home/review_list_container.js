import { connect } from 'react-redux';
import ReviewList from './review_list';

const mapStateToProps = ({entities: { reviews }}) => ({
    reviews: Object.values(reviews)
});

const mapDispatchToProps = dispatch => ({

});

export default connect(mapStateToProps, mapDispatchToProps)(ReviewList);