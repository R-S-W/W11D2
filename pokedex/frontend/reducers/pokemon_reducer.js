import {RECEIVE_ALL_POKEMON} from '../actions/pokemon_actions';

export default const pokemonReducer = (state = {}, action)=>{
  Object.freeze(state);

  switch (action.type){
    case RECEIVE_ALL_POKEMON:
      

  }

}