import React from 'react';

const UserListItem = (props) => {
  let {home, reservation } = props;

  return (
    <div>
      <div> {home.id} </div>
    </div>
  );
};

export default UserListItem;