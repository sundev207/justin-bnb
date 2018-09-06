import React from 'react';

class User extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      reservations: this.props.reservations
    };
  }

  componentDidMount() {
    this.props.fetchHomes();
    this.props.fetchReservations();
  }

  render() {
    if (!this.props.reservations) return null;
    let { reservations } = this.props;

    return(
      <div>
        <ul>
          {reservations.map(reservation => (
            <li key={reservation.id}>
              {reservation.home_id}
            </li>
          ))}
        </ul>
      </div>
    );
  }
}

export default User;
