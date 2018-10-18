import React from 'react';
import HomeIndex from './home_index';
import Map from './map';

class Search extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchHomes();
        window.scrollTo(0, 0);
    }

    render() {
        let { homes, center, updateFilter, fetchHomes} = this.props;
        return (
            <div className="user-pane">
                <div className="left-half">
                    <HomeIndex 
                        homes={homes} 
                    />
                </div>
                <div className="right-half" >
                    <Map
                        homes={homes}
                        center={center}
                        updateFilter={updateFilter}
                        fetchHomes={fetchHomes}
                    />
                </div>
            </div>
        );
    }

}

export default Search;