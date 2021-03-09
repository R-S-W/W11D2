import {createStore, applyMiddleware} from  'redux';
import thunk from '../middleware/thunk';
import {logger} from 'redux-logger';



export default  (preloadedState = {})=>{
  return createStore(rootReducer , preloadedState, applyMiddleware(thunk, logger));
} ;