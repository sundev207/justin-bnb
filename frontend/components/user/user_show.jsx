import React from 'react';
import UserListItem from './user_list_item';

class User extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      homes: null,
      user: null,
      reservedHomes: []
    };
  }

  componentDidMount() {
    this.props.fetchHomes()
      .then(homes => {
        this.setState({homes: homes.homes});
      });

    this.props.fetchUser(this.props.user.id)
      .then(user => {
        this.setState({user: user.user });
      });
  }

  render() {
    if (!this.state.user || !this.state.homes) {
      return null;
    }

    let { user, homes } = this.state;

    let userHomes = [];
    user.reservations.forEach(reservation => {
      userHomes.push({home: homes[reservation.home_id], reservation: reservation});
    });

    return(
      <div>
        <ul>
          {userHomes.map((payload, index) => (
            <UserListItem
              key={index}
              home={payload.home}
              reservation={payload.reservation}
            />
          ))}
        </ul>
      </div>
    );
  }
}

export default User;
