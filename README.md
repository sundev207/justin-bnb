# just-bnb

#### [Live Demo](https://just-bnb.herokuapp.com/#/)
##### A clone of [Airbnb](https://www.airbnb.com/ "Airbnb")

Just-bnb is an online marketplace which lets people rent out their properties or spare rooms to guests. Just-bnb's design is intended to be a clone Airbnb's UI/UX.

Just-bnb makes use of a Rails/PostgreSQL backend with a React.js and Redux frontend.

This project was designed and built in a 10-day deadline, although style changes and features will be added over time.

This README covers the following:

* [Features](#features)
* [Product Design](#product-design)
* [Technologies](#technologies)
* [Possible Future Features](#possible-future-features)

## Features

* Secure frontend and backend user authentication using BCrypt
* Users can search a location and be presented with a map populated with markers indicating homes
* Users can also view an index of homes availble in the area
* Once logged in, users may leave reviews and make reservations for specific homes

### Signup & Login Modals

Users are able to navigate the site and the homes, and should only being required to login when they want to leave a review and make a reservation. To login/signup, users can click on the corresponding button to get a modal to pop up.

![modal](https://media.giphy.com/media/4Tgx9wtsge7UEGhGKq/giphy.gif)

This was done by dispatching an `openModal` action whenever the signup or login buttons were clicked.

```javascript
function Modal({ modal }) {
    if (!modal) {
        return null;
    }
    let component;
    switch (modal[0]) {
        case 'login':
            component = <LoginFormContainer />;
            break;
        case 'signup':
            component = <SignupFormContainer />;
            break;
        default:
            return null;
    }
    return (
        <div className="modal-background" onClick={ closeModal }>
            <div className="modal-child" onClick={e => e.stopPropagation()}>
                {component}
            </div>
        </div>
    );
}
```
### Search

Users can search for a location, and an autocomplete dropdown will appear under the searchbar. The autocomplete feature was done in conjunction with [Places Autocomplete](https://developers.google.com/maps/documentation/javascript/examples/places-autocomplete) from Maps JavaScript API.

![search](https://media.giphy.com/media/69EoZ4TGYWexythMHY/giphy.gif)

### Home Show

Users view a specific home show page where they can view a larger photo, leave a review, and make a reservation for that home.

##### Navigating Show Page
![homeshow](https://media.giphy.com/media/FdpoxeXsf4npxC0pDq/giphy.gif)

##### Leaving a review
![review](https://media.giphy.com/media/PO8razNrfQexdSznOA/giphy.gif)

## Product Design

Application features and design documents can be accessed in the project wiki. The following design documents are available:

* [MVP List](https://github.com/bjjeong/just-bnb/wiki/MVP-List)
* [Schema](https://github.com/bjjeong/just-bnb/wiki/Schema)
* [State Shape](https://github.com/bjjeong/just-bnb/wiki/State-Shape)
* [Frontend Routes](https://github.com/bjjeong/just-bnb/wiki/Frontend-Routes)
* [Backend Routes](https://github.com/bjjeong/just-bnb/wiki/Backend-Routes)

## Technologies
Just-bnb was built with the purpose of creating a full-stack, single-page application (SPA) within a relatively short timeline (10 days). The technologies that were used in the application are not necessarily those that are best suited for scalability.

##### Technologies Used:
* JavaScript
* Ruby on Rails
* PostgreSql
* HTML
* CSS

##### Libraries Used:
* React.js
* Redux.js
* Amazon S3, Amazon AWS
* Google Maps JavaScript API
* Places Autocomplete

## Possible Future Features
* Allow users to edit/delete their reviews
* Allow users to view their reservations, along with edit/delete them.
* Get search to work for other locations
* User profiles
* Host views

---------

###### Developed by Justin Padilla

[![alt text][4.1]][4]
[![alt text][3.1]][3]
[![alt text][1.1]][1]
[![alt text][2.1]][2]










