import React from 'react'
import { Navbar, NavbarBrand } from 'shards-react'

export default class Header extends React.Component {
    render() {
        return (
            <Navbar type="dark" theme="primary" expand="md">
                <NavbarBrand href="#">Athens DB Fundamentals</NavbarBrand>

            </Navbar>
        )
    }
}