import { type Component } from 'solid-js'
import style from './NavBar.module.css'
// import movieIcon from '../../assets/movie.svg'

const NavBar: Component = () => {
  return (
    <header class={style.navbar}>
      <div>
        <a href="/">
          <svg class={style.logo} viewBox="0 0 24 24">
            <path d="m18 4 2 4h-3l-2-4h-2l2 4h-3l-2-4H8l2 4H7L5 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V4h-4z"></path>
          </svg>
        </a>
      </div>
      <h1>skykanin.movies</h1>
      <div class="buttons">
        <button>Login</button>
        <button>Register</button>
      </div>
   </header>
  )
}

export default NavBar
