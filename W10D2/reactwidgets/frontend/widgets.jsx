import React from 'react';
import ReactDOM from 'react-dom';
import Clock from "./clock";
import Tabs from "./tabs";


const tabs_comp= [{title:'title', content: 'hi'}]


const Root = () => { 
    return(
      <div>
      <Clock />
      <Tabs banana={tabs_comp} />
    </div>
    )
}
document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");

  const hello = <h1>Hello World, from React</h1>;

  ReactDOM.render(<Root />, root);
});



