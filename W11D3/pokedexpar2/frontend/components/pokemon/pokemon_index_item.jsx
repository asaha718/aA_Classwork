import React from 'react'; 
import { Link } from 'react-router-dom'; 

const PokemonIndexItem= ({id, name, image_url}) => (
    <li className="pokemon-index-item">
        <Link to={`/pokemon/${id}`}>
            <span>{id}</span>
            <img src={image_url}/>
            <span>{name}</span>
        </Link>
    </li>
)

export default PokemonIndexItem;  