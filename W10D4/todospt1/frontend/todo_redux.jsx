import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import {receiveTodos, receiveTodo} from './actions/todo_actions';

document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("root");
    window.receiveTodos = receiveTodos;
    window.receiveTodo = receiveTodo;
    const store= configureStore(); 
    window.store= store;
    const hello = <h1>To Do List</h1>;
    ReactDOM.render(hello, root);
  });