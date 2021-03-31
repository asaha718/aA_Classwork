import {connect} from 'react-redux';

const mapStateToProps = state => ({
  pokemon: state.entities.pokemon,
  moves: state.entities.moves,
  items: state.entities.items
});


const mapDispatchToProps = dispatch => ({
  requestPokeman: (id) => dispatch(requestPokeman(id)) 
});



export default connect(mapStateToProps, mapDispatchToProps)(PokemonDetail)