/* eslint-disable import/prefer-default-export */

import { LYRICS_REQUEST } from '../constants/beatlesConstants';
import * as BeatlesApi from '../api-utils/beatlesApiUtils';
// import { LYRICS_AUTOCOMPLETE } from '../constants/beatlesConstants';

export const requestLyricsSuccess = (text) => ({
  type: LYRICS_REQUEST,
  text,
});

export const requestLyricsFailed = (text, errorResponse) => ({
  type: LYRICS_REQUEST,
  failedAt: Date.now(),
  failedFilter: text,
  errorResponse
});

export const requestLyrics = searchFilter => (dispatch) => {
  BeatlesApi.requestLyrics(searchFilter).then((response) => {
    dispatch(requestLyricsSuccess(response))
  }).catch((error) => {
    dispatch(requestLyricsFailed(searchFilter, error))
  })
};

// export const autocompleteLyrics = (text) => ({
//   type: LYRICS_AUTOCOMPLETE,
//   text,
// });
// export const updateName = (text) => ({
//   type: HELLO_WORLD_NAME_UPDATE,
//   text,
// });
