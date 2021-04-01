import {connect} from 'react-redux';
import {requestPokeman} from '../../actions/pokemon_actions'; 
import PokemonDetail from './pokemon_detail'; 

const mapStateToProps = state => ({
  pokemon: state.entities.pokemon,
  moves: state.entities.moves,
  items: state.entities.items
});


const mapDispatchToProps = dispatch => ({
  requestPokeman: (id) => dispatch(requestPokeman(id)) 
});



export default connect(mapStateToProps, mapDispatchToProps)(PokemonDetail)