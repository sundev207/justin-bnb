import React from 'react';

class User extends React.Component {
  constructor(props) {
    super(props);
    this.state = {

    };
  }

  componentDidMount() {
    this.props.fetchReservations();
  }

  render() {
    if (!this.props.reservations) return null;
    let { reservations } = this.props;
    console.log(reservations);

    return(
      <div>
        <ul>
          {reservations.forEach(reservation => (
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
