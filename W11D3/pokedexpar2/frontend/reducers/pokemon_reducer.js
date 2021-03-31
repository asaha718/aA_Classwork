import { RECEIVE_ALL_POKEMON, RECEIVE_POKEMAN } from './../actions/pokemon_actions';


const pokemonReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type){
  case RECEIVE_ALL_POKEMON:
    return Object.assign({}, action.pokemon, state);
  case RECEIVE_POKEMAN:
    return Object.assign({}, action.pokeman.pokemon);
  default:
    return state;
  }
}
  
export default pokemonReducer;
