import React from "react";
// import Root from "widgets";

export default class Clock extends React.Component{ 
    constructor(props){ 
        super(props); 
        this.state= {time: new Date()}; 
        this.tick= this.tick.bind(this); 
        
    }

    componentDidMount(){ 
        setInterval(this.tick, 1000); 
    }

    tick(){ 
        this.setState({time: new Date()}); 
    }

    render(){ 
        let hours= this.state.time.getHours(); 
        let minutes= this.state.time.getMinutes(); 
        let seconds= this.state.time.getSeconds(); 

        return( 
            <div>
                <h1>Clock</h1>
                <div className="clock">
                    <span>
                        {hours}:{minutes}:{seconds}
                    </span>
                </div>
            </div>
        )
    }
} 