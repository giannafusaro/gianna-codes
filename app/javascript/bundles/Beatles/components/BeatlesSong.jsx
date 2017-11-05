import PropTypes from 'prop-types';
import React from 'react';

export default class BeatlesSong extends React.Component {
  static propTypes = {
    title: PropTypes.string,
    lyric: PropTypes.string,
    fact: PropTypes.string
  };

  constructor(props) {
    super(props);
    this.state = {
      title: props.title,
      lyric: props.lyric,
      fact: props.fact
    }
  }

  render() {
    return (
      <div>
        <h3>{this.props.title}</h3>
        <p style={{whiteSpace: 'pre-wrap'}}>{this.props.lyric}</p>
        <p>{this.props.fact}</p>
      </div>
    );
  }
}
