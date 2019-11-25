import React from 'react'
import { Modal, ModalBody, ModalHeader } from 'shards-react'

const Message = (props) => {
    // let message = null
    // if (props.show === true) message = (
    // ) 
    return (
        <Modal
        backdrop={true} 
        open={props.open}
        >
            <ModalHeader>Response</ModalHeader>
            <ModalBody>👋 {props.message}</ModalBody>
        </Modal>
    )
}

export default Message