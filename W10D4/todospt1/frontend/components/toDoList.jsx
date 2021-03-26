import React from 'react';
import allTodos from '../reducers/selectors'

const toDoList = (props) => {
    return <div>
        <h1>To Do List</h1>
        <ul>
            {allTodos(props).map((task, idx) => {
                <li>task.title</li>
            })}
        </ul>
    </div>
}