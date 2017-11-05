import { combineReducers } from 'redux';
import { LYRICS_AUTOCOMPLETE, LYRICS_REQUEST } from '../constants/beatlesConstants';

const lyrics = (state = '', action) => {
  switch (action.type) {
    case LYRICS_AUTOCOMPLETE:
      return action.text;
    case LYRICS_REQUEST:
      return action.lyrics
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

const beatlesReducer = combineReducers({ lyrics });

export default beatlesReducer;
