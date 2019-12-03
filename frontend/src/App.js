import React from 'react';
// import logo from './logo.svg';
import './App.css';
import Header from './Components/Header/Header'
import EvalForm from './Components/EvaluationForm/EvaluationForm'
import "shards-ui/dist/css/shards.min.css"
import axios from 'axios'
import { Button, Container } from "shards-react";
import posed from 'react-pose';

const Notification = posed.div({
  hidden: { top: '-12vh' },
  visible: { top: '2vh' }
});


export default class App extends React.Component {
  state = {
    hello: false,
    department: [],
    notification: true,
    notification_message: "Test"
  }

  showNotification = (t) => {
    if (t === null) t = ""
    this.setState({notification: false })
    setTimeout(() => {
      this.setState({notification: true})
    }, 1500);
  }

  componentDidMount() {
    axios.get('/api/hello-world')
      .then((res) => console.log(res))
      .catch((err) => console.log(err))
  }
  render() {
    const { notification } = this.state;
    return (
      <div className="App">
        <Notification 
          className="notification-container"
          pose={notification ? 'hidden': 'visible'}
          >
          <div className="notice">
            Data has been Saved.
          </div>
        </Notification>
        <Header></Header>
        <Container>
          <EvalForm showNotification={this.showNotification} />
        </Container>
      </div>
    );
  }
}