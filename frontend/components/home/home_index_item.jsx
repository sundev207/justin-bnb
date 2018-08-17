import React from 'react';
import { withRouter } from 'react-router';

class HomeIndexItem extends React.Component {
    constructor(props) {
        super(props);
    }
    render() {
        let { home } = this.props;

        return (
            <div className="home-index-item" onClick={() => this.props.history.push(`/homes/${home.id}`)}>
                <div className="home-index-photo-container">
                    <img className="home-index-photo" src={home.photoUrl} />
                </div>
                <div className="home-index-details">
                    <div className="home-index-rooms">
                        {home.num_rooms} ROOMS
                    </div>
                    <div className="home-index-name">
                        <h1>{home.name} </h1>
                    </div>
                    <div className="home-index-price">
                        ${home.price} per night
                    </div>
                    <div className="stars">
                        <i className="fas fa-star fa-xs"></i>
                        <i className="fas fa-star fa-xs"></i>
                        <i className="fas fa-star fa-xs"></i>
                        <i className="fas fa-star fa-xs"></i>
                        <i className="fas fa-star fa-xs"></i>
                    </div>
                </div>
            </div>
        );
    }
}

export default withRouter(HomeIndexItem);