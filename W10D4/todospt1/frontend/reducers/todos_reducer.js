import {RECEIVE_TODOS} from "../actions/todo_actions";
import {RECEIVE_TODO} from "../actions/todo_actions";



// reducers/todos_reducer.js
const initialState = {
  1: {
    id: 1,
    title: "wash car",
    body: "with soap",
    done: false
  },
  2: {
    id: 2,
    title: "wash dog",
    body: "with shampoo",
    done: true
  }
};

const todosReducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_TODOS:
      return searchId(action.todos);
    case RECEIVE_TODO:
      const nextState = Object.assign({}, state);
      nextState[action.todo.id] = action.todo;
      return nextState;
    default:
      return state;
  }
};


const searchId = (arr) => {
  let hash = {};
  arr.forEach (ele => {
    hash[ele.id] = ele
  });
  return hash;
}

// const todosReducer = (state = {}, action) => {
// };
  
export default todosReducer;



// action.todos = [
//   {id: 1, title: "wash car", body: "with soap", done: false},
//   {id: 2, title: "wash dog", body: "with shampoo", done: true}
// ]

// action.todos[0].id