import React from 'react';
import PokemonIndexItem from "./pokemon_index_item";


class PokemonIndex extends React.Component{
  constructor(props){
  super(props)
  }
  
  componentDidMount(){
  this.props.requestAllPokemon()
  }
  
  render(){
    return (
    <section className="pokedex">
      <ul>
      {this.props.pokemon.map((poke) => (
        <PokemonIndexItem key={poke.id} name={poke.name} id={poke.id} image_url={poke.imageUrl}/> 
      ))}
      </ul>
    </section>
    )
  }
  }
  
  
  
  export default PokemonIndex;