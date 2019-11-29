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
    // axios.get('/api/department')
    //   .then(res => {
    //     console.log(res.data)
    //     this.setState({department: res.data})
    //   })
    //   .catch(err => console.log(err))
  }
  render() {
    const { notification } = this.state;
    
    // let department = null;
    // if (this.state.department.length === 0) department = (<p>No DATA</p>)
    // else department = this.state.department.map(d => 
    //   (<Row key={d.dname} className="row">
    //     <Col md="4" className="column">{d.dname}</Col>
    //     <Col md="4" className="column">{d.dnumber}</Col>
    //     <Col md="4" className="column">{d.mgrssn}</Col>
    //     <Col md="4" className="column">{d.mgrstartdate}</Col>
    //   </Row>)
    // )
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
        {/* <Button onClick={this.showNotification}>toggle</Button> */}
        <Container>
          {/* {department} */}
          <EvalForm showNotification={this.showNotification} />
        </Container>
      </div>
    );
  }
}