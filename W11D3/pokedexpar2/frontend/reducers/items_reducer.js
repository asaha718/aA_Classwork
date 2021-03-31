import {RECEIVE_ALL_POKEMON, RECEIVE_POKEMAN} from '../actions/pokemon_actions';

const itemsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_POKEMAN:
      return Object.assign({}, action.pokeman.items);
    default:
      return state;
  }
}

export default itemsReducer;