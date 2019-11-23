import React from 'react'
import './EvaluationForm.css'
import { Button, Form, FormInput, FormGroup } from 'shards-react'

export const evalform = [
    {id: "#workername", placeholder: "Worker Name"},
    {id: "#ssn", placeholder: "SSN"},
]

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
        }
    }
    setInput = (i) => {
        let value = i.target.value
        let index = i.target.id.replace("#", "")
        if (index === "rating") value = parseInt(value)
        this.setState({
            form: {...this.state.form, [index]: value}
        })
    }
    submitForm = (f) => {
        let form = this.state.form
        console.log("evalform: ", form)
    }
    render() {
        return (
            <div className="EvalFormContainer">
                <div className="EvalForm">
                    <p>Evaluation Form</p>
                    {
                        <Form>
                            {evalform.map(v => (
                               <FormGroup key={v.id}>
                                   <FormInput 
                                        id={v.id} 
                                        placeholder={v.placeholder}
                                        onChange={this.setInput}
                                        />
                               </FormGroup>
                            ))}
                        </Form>
                    }
                    <Form>
                        <FormGroup>
                            <label htmlFor="#workername">Worker Name</label>
                            <br />
                            <FormInput onChange={this.setInput} id="#workername" placeholder="Worker Name" />
                        </FormGroup>
                        <FormGroup>
                            <label htmlFor="#ssn">SSN</label>
                            <br />
                            <FormInput id="#ssn" placeholder="Social Security Number" />
                        </FormGroup>
                        <FormGroup>
                            <label htmlFor="#jobtitle">Job Title</label>
                            <br />
                            <FormInput id="#jobtitle" placeholder="Job Title" />
                        </FormGroup>
                        <FormGroup>
                            <label htmlFor="#evaluationdate">Evaluation Date</label>
                            <br />
                            <FormInput id="#evaluationdate" placeholder="Evaluation Date" type="date" />
                        </FormGroup>
                        <FormGroup>
                            <label htmlFor="#ratername">Rater Name</label>
                            <br />
                            <FormInput id="#ratername" placeholder="Rater Name" />
                        </FormGroup>
                        <FormGroup>
                            <label htmlFor="#rating">Rating</label>
                            <br />
                            <FormInput onChange={this.setInput} id="#rating" placeholder="Rating" type="number" />
                        </FormGroup>
                        <FormGroup>
                            <label htmlFor="#ratingcomment">Comment</label>
                            <br />
                            <FormInput id="#ratingcomment" placeholder="Rating Comment" />
                        </FormGroup>
                        <Button onClick={this.submitForm}>Submit</Button>
                    </Form>
                </div>
            </div>
        )
    }
}