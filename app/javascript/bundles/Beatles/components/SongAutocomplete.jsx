import PropTypes from 'prop-types';
import React from 'react';
import Autocomplete from 'react-autocomplete';

export default class SongAutocomplete extends React.Component {

  static propTypes = {
    songs: PropTypes.array
  };

  /**
   * @param props - Comes from your rails view.
   */
  constructor(props) {
    super(props);
    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = { songs: this.props.songs, highlighted: true };
  }

  componentDidMount() {
    // debugger
  }

  onOptionChange(e) {
    this.setState({ value: e.target.value })
  }

  selectSong(val, item) {
    this.setState({value: val, selectedSong: item})
    this.props.onSongSelect(item)
  }

  getItemValue(item) {
    return item.label
  }

  render() {
    return (
      <Autocomplete
        inputProps={ {size: '75'}}
        style={{width: '800px'}}
        items={this.state.songs}
        shouldItemRender={(item, value) => item.label.toLowerCase().indexOf(value.toLowerCase()) > -1}
        getItemValue={item => this.getItemValue(item)}
        renderItem={(item, highlighted) =>
          <div
            key={item.id}
            style={{ backgroundColor: highlighted ? '#eee' : 'transparent'}}
          >
            {item.label}
          </div>
        }
        value={this.state.value}
        onChange={e => this.onOptionChange(e)}
        onSelect={(value, item) => this.selectSong(value, item)}
      />
    )
  }
}
