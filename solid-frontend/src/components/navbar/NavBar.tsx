import { type Component } from 'solid-js'
import './NavBar.css'
import solidLogo from '../../assets/solid.svg'

const NavBar: Component = () => {
  return (
    <div class="navbar">
      <div class="logo">
        <a href="/home">
          <img src={solidLogo} class="logo solid" alt="Solid logo"/>
        </a>
      </div>
      <span>hello world</span>
      <div class="buttons">
        <button>Login</button>
        <button>Register</button>
      </div>
   </div>
  )
}

export default NavBar
