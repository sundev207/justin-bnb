import React from 'react';
import NavContainer from './nav/nav_container';
import { Switch, Route } from 'react-router-dom';
import HomepageContainer from './homepage/homepage_container';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import SearchContainer from './home/search_container';
import HomeShowContainer from './home/home_show_container';
import UserShowContainer from './user/user_show_container';
import Modal from './modal/modal';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const Home = ({ children }) => (
  <div className="home">
    <NavContainer />
    <HomepageContainer />
  </div>
);

const Search = ({ children }) => (
  <div className="search">
    <NavContainer />
    <SearchContainer />
  </div>
);

const Show = (ownProps) => (
  <div className="show">
    <NavContainer />
    <HomeShowContainer ownProps={ownProps} />
  </div>
);

const UserShow = (ownProps) => (
  <div className="show">
    <NavContainer/>
    <UserShowContainer ownProps={ownProps} />
  </div>
);

const App = ({ children }) => (
  <div>
    <Modal />
    <div className="home-page">
      <div>
        <Switch>
          <AuthRoute exact path="/login" component={LoginFormContainer} />
          <AuthRoute exact path="/signup" component={SignupFormContainer} />
          <Route exact path="/search" component={Search} />
          <Route exact path="/homes/:homeId" component={Show} />
          <Route exact path="/users/:userId" component={UserShow} />
          <Route path="/" component={Home} />
        </Switch>
      </div>
    </div>
  </div>
);

export default App;