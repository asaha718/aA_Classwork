import {RECEIVE_ALL_POKEMON, RECEIVE_POKEMAN} from '../actions/pokemon_actions';

const movesReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_POKEMAN:
      return Object.assign({}, action.pokeman.moves);
    default:
      return state;
  }
}

export default movesReducer;