import * as APIUtil from '../util/api_util';

export const RECEIVE_ALL_POKEMON = "RECEIVE_ALL_POKEMON";
export const RECEIVE_POKEMAN = "RECEIVE_POKEMAN";

export const receiveAllPokemon = (pokemon) => ({
  type: RECEIVE_ALL_POKEMON,
  pokemon
})

export const receivePokeman = (pokeman) => ({
  type: RECEIVE_POKEMAN,
  pokeman
})

export const requestAllPokemon = () => (dispatch) => (
  APIUtil.fetchAllPokemon()
    .then(pokemon => dispatch(receiveAllPokemon(pokemon)))
)

export const requestPokeman = (id) => (dispatch) => (
  APIUtil.fetchPokeman(id)
    .then(pokeman => dispatch(receivePokeman(pokeman))) 
)