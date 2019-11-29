import React from 'react'
import './EvaluationForm.css'
import axios from 'axios'
import { Button, Form, FormInput, FormGroup } from 'shards-react'
import Loader from '../Loader/Loader'

export const evalform = [
    { id: "#workername", placeholder: "Worker Name", type: "text" },
    { id: "#ssn", placeholder: "SSN", type: "text" },
    { id: "#jobtitle", placeholder: "Job Title", type: "text" },
    { id: "#evaluationdate", placeholder: "Evaluation Date", type: "date" },
    { id: "#ratername", placeholder: "Rater Name", type: "text" },
    { id: "#rating", placeholder: "Rating", type: "number" },
    { id: "#ratingcomment", placeholder: "Rating Comment", type: "text" },
]

export const Aux = (props) => (
    <div>
        {props.children}
    </div>
);
export default class Evalform extends React.Component {
    state = {
        form: {
            workername: "",
            ssn: "",
            jobtitle: "",
            evaluationdate: "",
            ratername: "",
            rating: 0,
            ratingcomment: "",
        },
        loading: false,
        message: false
    }
    setInput = (i) => {
        let value = i.target.value
        let index = i.target.id.replace("#", "")
        if (index === "rating") value = parseInt(value)
        this.setState({
            form: { ...this.state.form, [index]: value }
        })
    }
    submitForm = (f) => {
        this.setState({ loading: true })
        let form = this.state.form
        console.log("evalform: ", form)
        axios.post("/api/worker/evaluation", form)
            .then(res => {
                console.log(res)
                setTimeout(() => {
                    this.setState({ loading: false, message: true })
                    this.props.showNotification(JSON.stringify(res))
                }, 3000);
                // setTimeout(() => {
                //     this.setState({message: false})
                // }, 3000); 
            })
    }
    render() {
        return (
            <Aux>
                <div className="EvalFormContainer">
                    <div className="EvalForm">
                        {/* <h3>Evaluation Form</h3> */}
                        <br />
                        {
                            <Form>
                                {evalform.map(v => (
                                    <FormGroup key={v.id}>
                                        <label htmlFor={v.id}>{v.placeholder}</label>
                                        <br />
                                        <FormInput
                                            id={v.id}
                                            placeholder={v.placeholder}
                                            onChange={this.setInput}
                                            type={v.type}
                                        />
                                    </FormGroup>
                                ))}
                            </Form>
                        }
                        <div className="submit">
                            <Button onClick={this.submitForm}>Submit</Button>
                            {this.state.loading ? <Loader /> : null}
                        </div>
                        {/* <Modal size="sm" open={this.state.message}>
                        <ModalHeader>Header</ModalHeader>
                        <ModalBody>👋 Hello there!</ModalBody>
                    </Modal> */}
                    </div>
                </div>
            </Aux>
        )
    }
}