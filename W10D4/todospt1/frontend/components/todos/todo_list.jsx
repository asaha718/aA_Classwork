import React from 'react';

export default (props) => {
    return (
        <div>
            <h1>To Do List</h1>
                <ul>
                    {props.todos.map((task, idx) =>
                        <li>{task.title}</li>
                    )}
                </ul>
        </div>
    )
}