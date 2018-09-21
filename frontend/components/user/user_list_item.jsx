import React from 'react';
import { withRouter } from 'react-router';

const UserListItem = (props) => {
  let {home, reservation } = props;

  return (
    <div className="home-index-item" onClick={() => props.history.push(`/homes/${home.id}`)}>
      <div className="home-index-photo-container">
        <img className="home-index-photo" src={home.photoUrl} />
      </div>
      <div className="home-index-details">
        <div className="home-index-rooms">
          {reservation.check_in_date} - {reservation.check_out_date}
        </div>
        <div className="home-index-name">
          <h1>{home.name} </h1>
        </div>
        <div className="home-index-price">
          {reservation.num_guests} guests reserved
        </div>
      </div>
    </div>
  );
};

export default withRouter(UserListItem);