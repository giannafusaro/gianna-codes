import PropTypes from 'prop-types';
import React from 'react';

export default class BeatlesSong extends React.Component {
  static propTypes = {
    title: PropTypes.string.isRequired,
    lyric: PropTypes.string
    // lyrics: PropTypes.array
    // name: PropTypes.string.isRequired, // this is passed from the Rails view
  };

  /**
   * @param props - Comes from your rails view.
   */
  constructor(props) {
    super(props);
    this.state = { lyric: props.lyric, title: props.title }
    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    // this.state = { lyrics: this.props.lyrics, value: '' };
  }

  // updateName = (name) => {
  //   this.setState({ name });
  // };

  render() {
    return (
      <div>
        <h2>{this.state.title}</h2>
        <p>{this.state.lyric}</p>
      </div>
    );
  }
}
