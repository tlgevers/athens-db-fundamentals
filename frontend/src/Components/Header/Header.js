import React from 'react'
import { Navbar, NavbarBrand } from 'shards-react'
import './Header.css'

export default class Header extends React.Component {
    render() {
        return (
            <Navbar className="custom-header" type="dark" theme="primary" expand="md">
                <NavbarBrand href="#">Athens DB Fundamentals</NavbarBrand>

            </Navbar>
        )
    }
}