import React from 'react';

const UserListItem = (props) => {
  let {home, reservation } = props;

  return (
    <div className="home-index-item">
      <div className="home-index-photo-container">
        <img className="home-index-photo" src={home.photoUrl} />
      </div>
    </div>
  );
};

export default UserListItem;