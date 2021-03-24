import React from 'react';

export default class Tabs extends React.Component{ 
    constructor(props){ 
        super(props); 
        this.state= {selectedTab: 0}; 
        this.selectTab= this.selectTab.bind(this); 
    }

    selectTab(){ 
        this.setState({selectedTab: num})
    }
    
    render (){
        console.log(this.props)
        return (<h1>THIS IS TABS</h1>)
    }

}