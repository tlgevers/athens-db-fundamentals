import React from 'react';
import logo from './logo.svg';
import './App.css';
import Header from './Components/Header/Header'
import "shards-ui/dist/css/shards.min.css"
import axios from 'axios'

export default class App extends React.Component {
  state = {
    hello: false
  }
  componentDidMount() {
    axios.get('/api/hello-world')
      .then((res) => console.log(res))
      .catch((err) => console.log(err))
  }
  render() {
    return (
      <div className="App">
        <Header></Header>
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            Edit <code>src/App.js</code> and save to reload.
        </p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn React
        </a>
        </header>
      </div>
    );
  }
}