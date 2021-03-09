import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Pokedex from './components/pokedex';
import {receiveAllPokemon , RECEIVE_ALL_POKEMON} from './actions/pokemon_actions';
import {fetchAllPokemon} from './util/api_util';

document.addEventListener('DOMContentLoaded', ()=>{

  // const store = configureStore();
  //


  const root = document.getElementById('root');
  ReactDOM.render(<h1>Pokedex</h1>, root)


  window.RECEIVE_ALL_POKEMON = RECEIVE_ALL_POKEMON;
  window.receiveAllPokemon = receiveAllPokemon;
  window.fetchAllPokemon = fetchAllPokemon;


});