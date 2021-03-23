import React from 'react';
import ReactDOM from 'react-dom';
import Clock from "./clock";



document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");

  const hello = <h1>Hello World, from React</h1>;

  ReactDOM.render(<Clock />, root);
});

function Root(){ 
    return(<div>

    </div>
    )
}