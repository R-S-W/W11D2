
import React from 'react';
import {Provider} from 'react-redux';


const Pokedex = ({store})=>{
  return (
    <Provider store = {store}>
      <div>
        Pokemon
      </div>
    </Provider>
  )
}

export default Pokedex;