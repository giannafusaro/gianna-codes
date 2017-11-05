import PropTypes from 'prop-types';
import React from 'react';
import SongAutocomplete from './SongAutocomplete';
import BeatlesSong from './BeatlesSong';

export default class Beatles extends React.Component {
  static propTypes = {
    songs: PropTypes.array
    // name: PropTypes.string.isRequired, // this is passed from the Rails view
  };

  /**
   * @param props - Comes from your rails view.
   */
  constructor(props) {
    super(props);
    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = { songs: this.props.songs, value: '' };
  }

  componentDidMount() {
    // debugger
  }

  updateName = (name) => {
    this.setState({ name });
  };

  maybeRenderSong = () => {
    if (this.state.selectedSong) {
      let title = this.state.selectedSong.label
      let lyric = this.state.selectedSong.lyric
      let fact = this.state.selectedSong.fact
      return (<BeatlesSong title={title} lyric={lyric} fact={fact} />)
    }
  }

  selectSong = (item) => {
    this.setState({selectedSong: item})
    console.log('SELECTED SONG CHANGED', item)
  }

  render() {
    return (
      <div>
        <h1>Beatles</h1>

        <SongAutocomplete songs={this.props.songs} onSongSelect={this.selectSong} />
        {this.maybeRenderSong()}
      </div>
    );
  }
}
