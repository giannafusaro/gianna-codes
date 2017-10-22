import { createStore } from 'redux';
import beatlesReducer from '../reducers/beatlesReducer';

const configureStore = (railsProps) => (
  createStore(beatlesReducer, railsProps)
);

export default configureStore;
