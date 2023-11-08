import { type Component } from 'solid-js'
import style from './NavBar.module.css'
import solidLogo from '../../assets/solid.svg'

const NavBar: Component = () => {
  return (
    <header class={style.navbar}>
      <div class={style.logo}>
        <a href="/home">
          <img src={solidLogo} class="logo solid" alt="Solid logo"/>
        </a>
      </div>
      <h1>qwikk.movies</h1>
      <div class="buttons">
        <button>Login</button>
        <button>Register</button>
      </div>
   </header>
  )
}

export default NavBar
