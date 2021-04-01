import React from 'react';

class PokemonDetail extends React.Component{
  constructor(props) {
    super(props);
  }

  componentDidMount(){ 
    this.props.requestPokeman(this.props.match.params.pokemonId)
  }

  componentDidUpdate(prevProps){ 
    if (this.props.pokemon.id !== prevProps.pokemon.id){ 
      this.props.requestPokeman(this.props.match.params.pokemonId); 
    }
  }

  render(){ 
    let {pokemon, moves, items}= this.props
    return( 
      <div>
        <ul>
          <li>{pokemon.name}</li>
          <li>{pokemon.attack}</li>
          <li>{pokemon.defense}</li>
          <li>{pokemon.pokeType}</li>
        </ul>
        {/* <ul>
          {for (let move in moves){
              <li>move.name</li>
          }}
        </ul> */}
      </div>
    )
  }
}

export default PokemonDetail; 