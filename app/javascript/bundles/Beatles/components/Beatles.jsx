import PropTypes from 'prop-types';
import React from 'react';
import Autocomplete from 'react-autocomplete';
import BeatlesSong from './BeatlesSong';

export default class Beatles extends React.Component {
  static propTypes = {
    lyrics: PropTypes.array
    // name: PropTypes.string.isRequired, // this is passed from the Rails view
  };

  /**
   * @param props - Comes from your rails view.
   */
  constructor(props) {
    super(props);
    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = { lyrics: this.props.lyrics, value: '' };
  }

  componentDidMount() {
    // debugger
  }

  updateName = (name) => {
    this.setState({ name });
  };

  maybeRenderLyrics = () => {
    if (this.state.value != '') {
      return (<BeatlesSong title={this.state.value} lyric={this.state.value} />)
    }
  }

  selectLyric = (value) => {
    debugger
    // setState({ value })
  }

  render() {
    return (
      <div>
        <h1>Beatles</h1>

        <Autocomplete
          items={this.state.lyrics}
          shouldItemRender={(item, value) => item.label.toLowerCase().indexOf(value.toLowerCase()) > -1}
          getItemValue={item => item.label}
          renderItem={(item, highlighted) =>
            <div
              key={item.id}
              style={{ backgroundColor: highlighted ? '#eee' : 'transparent'}}
            >
              {item.label}
            </div>
          }
          value={this.state.value}
          onChange={e => this.setState({ value: e.target.value })}
          onSelect={value => this.selectLyric(value)}
        />

        {this.maybeRenderLyrics()}
      </div>
    );
  }
}
