import {combineReducers} from 'redux';
import itemsReducer from './items_reducer';
import pokemonReducer from './pokemon_reducer';
import movesReducer from './moves_reducer';

const entitiesReducer = combineReducers({
  pokemon: pokemonReducer,
  items: itemsReducer,
  moves: movesReducer
})

export default entitiesReducer;