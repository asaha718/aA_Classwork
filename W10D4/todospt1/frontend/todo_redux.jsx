import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import {receiveTodos, receiveTodo} from './actions/todo_actions';
import Root from './components/root'
import allTodos from './reducers/selectors'

document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("root");
    window.receiveTodos = receiveTodos;
    window.receiveTodo = receiveTodo;
    window.allTodos = allTodos;
    const store= configureStore(); 
    window.store= store;
    const hello = <h1>To Do List</h1>;
    ReactDOM.render(<Root store= {store} />, root);
  });