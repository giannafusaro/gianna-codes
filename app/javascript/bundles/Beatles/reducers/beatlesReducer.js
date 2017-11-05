import { combineReducers } from 'redux';
import { SONGS_AUTOCOMPLETE, SONGS_REQUEST } from '../constants/beatlesConstants';

const songs = (state = '', action) => {
  switch (action.type) {
    case SONGS_AUTOCOMPLETE:
      return action.text;
    case SONGS_REQUEST:
      return action.songs
    default:
      return state;
  }
}
// const name = (state = '', action) => {
//   switch (action.type) {
//     case HELLO_WORLD_NAME_UPDATE:
//       return action.text;
//     default:
//       return state;
//   }
// };

const beatlesReducer = combineReducers({ songs });

export default beatlesReducer;
