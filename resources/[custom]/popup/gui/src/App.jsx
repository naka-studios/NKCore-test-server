import './App.css';
import React from 'react';
import reactLogo from './assets/react.svg';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      show: false,
      data: {},
      count: 0,
    };
  }

  componentDidMount() {
    window.addEventListener('message', (event) => {
      switch (event.data.action) {
        case 'show':
          this.setState({ show: true, data: event.data.data });
          break;
        case 'hide':
          this.setState({ show: false, data: {} });
        default:
          break;
      }
    });
  }

  handleButton = () => {
    const total = this.state.count + 1;

    this.setState({ count: total });

    fetch('https://popup/getCountData', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ count: total }),
    });
  };

  render() {
    return this.state.show ? (
      <div className='App'>
        <div>
          <a
            href='https://reactjs.org'
            target='_blank'
          >
            <img
              src={reactLogo}
              className='logo react'
              alt='React logo'
            />
          </a>
        </div>
        <h1>Vite + React</h1>
        <div className='card'>
          <button onClick={this.handleButton}>count is: {this.state.count}</button>
        </div>
        <p className='read-the-docs'>{this.state.data && this.state.data.title}</p>
      </div>
    ) : null;
  }
}

export default App;
