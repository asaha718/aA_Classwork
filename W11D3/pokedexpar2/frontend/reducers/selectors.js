export const selectAllPokemon = (state) => {
  return Object.values(state.entities.pokemon)
}
  
selectPokemonMovesNames= (state) => { 
  let allmoves=[]; 
  for( let move in state.entities.moves){ 
    allmoves.push(move.name)
  }
}