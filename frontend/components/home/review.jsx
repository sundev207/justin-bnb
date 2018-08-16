import React from 'react';
import { withRouter } from 'react-router';

class Review extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            home_id: this.props.homeId,
            body: "",
            rating: 0,
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    componentDidUpdate() {
        this.redirectIfLoggedIn();
    }

    redirectIfLoggedIn() {
        if (!this.props.loggedIn) {
            this.props.closeModal();
        }
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        const review = this.state;
        review.user_id = this.props.currentUser;
        this.props.createReview(review).then(this.props.closeModal);
    }

    renderErrors() {
        return (
            <ul>
                {this.props.errors.map((error, i) => (
                    <li key={`error-${i}`}>
                        {error}
                    </li>
                ))}
            </ul>
        );
    }

    render() {
        return (
            <section className="review-form-container">
                <div className="review-form-content">
                    <div className="close-x">
                        <button className="x-button" onClick={this.props.closeModal}>
                            <svg viewBox="0 0 24 24" role="img" aria-label="Close" focusable="false">
                                <path d="m23.25 24c-.19 0-.38-.07-.53-.22l-10.72-10.72-10.72 10.72c-.29.29-.77.29-1.06 0s-.29-.77 0-1.06l10.72-10.72-10.72-10.72c-.29-.29-.29-.77 0-1.06s.77-.29 1.06 0l10.72 10.72 10.72-10.72c.29-.29.77-.29 1.06 0s .29.77 0 1.06l-10.72 10.72 10.72 10.72c.29.29.29.77 0 1.06-.15.15-.34.22-.53.22" fillRule="evenodd">
                                </path>
                            </svg>
                        </button>
                    </div>
                    <section>
                        <div>
                            <div>
                                <form onSubmit={this.handleSubmit} className="review-form-box">
                                    <br /> {this.renderErrors()}
                                    <div className="review-form">
                                        <div className="input-container">
                                            <div className="input-container-2">
                                                <div className="form-input">
                                                    <input required type="number" autoComplete="off" placeholder="Please select a number between 1-5" onChange={this.update("rating")} className="review-input" />
                                                </div>
                                            </div>
                                        </div>
                                        <div className="input-container">
                                            <div className="input-container-2">
                                                <div className="form-input">
                                                    <textarea required rows="13" placeholder="Leave a review" value={this.state.body} onChange={this.update("body")} className="review-input" />
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <button type="submit" disabled={!(this.state.body !== "" && this.state.rating !== 0 && this.state.rating !== "")} >
                                            <span className="button-text">
                                                Submit Review
                                            </span>
                                        </button>
                                    </div>
                                    <div className="line-container">
                                        <div className="line"></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </section>
                </div>
            </section>
        );
    }
}

export default withRouter(Review);