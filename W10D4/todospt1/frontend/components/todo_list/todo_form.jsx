import React from 'react';

class TodoForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            title: "",
            body: ""
        };
    }

    render () {
        return (
            <form>
                <label>Title:
                    <input/>
                </label>
                <label>Body:
                    <textarea></textarea>
                </label>
            </form>
        )
    }

}

