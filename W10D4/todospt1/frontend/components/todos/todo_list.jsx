import React from 'react';
import TodoListItem from '../todo_list/todo_list_item';

export default (props) => {
    return (
        <div>
            <h1>To Do List</h1>
                <ul>
                    {props.todos.map((task) =>
                       <TodoListItem todo={task} key={task.id}/> 
                    )}
                </ul>
        </div>
    )
}