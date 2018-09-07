import React from 'react';

class User extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
    };
  }

  componentDidMount() {
    this.props.fetchHomes();
    this.props.fetchUser(this.props.user.id);
  }

  render() {
    if (!this.props.user.reservations) return null;
    let { user, homes } = this.props;

    let reservedHomes = [];
    user.reservations.forEach(reservation => {
      reservedHomes.push(homes.find(home => home.id === reservation.home_id))
    });


    return(
      <div>
        <ul>
          {reservedHomes.forEach(home => <li> { console.log("what the hell...") } </li>)}
        </ul>
      </div>
    );
  }
}

export default User;
