import React from 'react';

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
      .then(this.setState({ homes: this.props.homes}));

    this.props.fetchUser(this.props.user.id)
      .then(this.setState({user: this.props.user}));
  }

  render() {
    if (!this.state.user || !this.state.homes) {
      return null;
    }

    console.log(this.state.user, this.state.homes);
    let { user, homes } = this.props;

    // let userHomes = [];
    // user.reservations.forEach(reservation => {
    //   userHomes.push(homes.find(home => home.id === reservation.home_id));
    // });

    return(
      <div>
        <ul>
          {this.state.reservedHomes.forEach(home => <li> {home.name} </li>)}
          <li>What the hell</li>
        </ul>
      </div>
    );
  }
}

export default User;
