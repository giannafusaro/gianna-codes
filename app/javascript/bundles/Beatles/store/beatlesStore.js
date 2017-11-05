import { createStore } from 'redux';
import beatlesReducer from '../reducers/beatlesReducer';

const configureStore = (railsProps) => (
  createStore(beatlesReducer,
    railsProps,
    window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__()
)
);

export default configureStore;
