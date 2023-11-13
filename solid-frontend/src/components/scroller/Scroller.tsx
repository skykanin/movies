import { For } from 'solid-js'
import type { Component } from 'solid-js'
import type { Movie } from '../../types'
import MovieCard from '../moviecard/MovieCard'

import style from './Scroller.module.css'

interface ScrollerProps {
  movies: Array<Movie>
}

const Scroller: Component<ScrollerProps> = (props) => {
  return (
    <div class={style.scroller}>
      <For each={props.movies}>
        {(movie) => <MovieCard movie={movie}/> }
      </For>
    </div>
  )
}

export default Scroller
