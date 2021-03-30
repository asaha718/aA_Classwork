import React from 'react';

class TodoForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            title: "",
            body: ""
        };

        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleTitle = this.handleTitle.bind(this);
        this.handleBody = this.handleBody.bind(this);
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.addTodo(this.state);
        this.setState({ title: '', body: '' });
    }

    handleTitle(e) {
        this.setState({ title: e.target.value });
    }

    handleBody(e) {
        this.setState({ body: e.target.value });
    }



    render () {
        return (
            <form onSubmit={this.handleSubmit}>
                <label>Title:
                    <input onChange={this.handleTitle} type="text" value={this.state.title} />
                </label>
                <label>Body:
                    <textarea onChange={this.handleBody} type="text" value={this.state.body}></textarea>
                </label>
            </form>
        )
    }

}

export default ToDoForm;