import React from 'react';
// import logo from './logo.svg';
import './App.css';
import Header from './Components/Header/Header'
import EvalForm from './Components/EvaluationForm/EvaluationForm'
import "shards-ui/dist/css/shards.min.css"
import axios from 'axios'
import { Button, Container, Row, Col } from "shards-react";

export default class App extends React.Component {
  state = {
    hello: false,
    department: [],
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
    let department = null;
    if (this.state.department.length === 0) department = (<p>No DATA</p>)
    else department = this.state.department.map(d => 
      (<Row key={d.dname} className="row">
        <Col md="4" className="column">{d.dname}</Col>
        <Col md="4" className="column">{d.dnumber}</Col>
        <Col md="4" className="column">{d.mgrssn}</Col>
        <Col md="4" className="column">{d.mgrstartdate}</Col>
      </Row>)
    )
    return (
      <div className="App">
        <Header></Header>
        <hr />
        <Button>Dept Report</Button>
        <Button>Another Report</Button>
        <hr />
        <Container>
          {department}
          <EvalForm />
        </Container>
        {/* <header className="App-header">
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
        </header> */}
      </div>
    );
  }
}