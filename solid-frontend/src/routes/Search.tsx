import type { Component } from 'solid-js'
import { onMount, createSignal, For, Show } from 'solid-js'
import { useSearchParams } from '@solidjs/router'
import { queryMovies } from '../lib/api'
import type { Movie } from '../types'

import MovieCard from '../components/moviecard/MovieCard'

import style from './Search.module.css'

const Search: Component = () => {
  const [params] = useSearchParams()
  const [offset, setOffset] = createSignal(0)
  const [end, setEnd] = createSignal(false)
  const [movies, setMovies] = createSignal<Array<Movie>>()
  const updateMovies = (movies: Array<Movie>) =>
        setMovies(old => old ? old.concat(movies) : movies)

  const fetchMovies = (initialFetch: boolean) => {
    queryMovies(
      params.title,
      params.genres.split(','),
      {limit: params.limit,
       offset: initialFetch ? "0" : offset().toString()}
    ).then((newMovies) => {
         updateMovies(newMovies)
         if (newMovies.length < parseInt(params.limit)) setEnd(true)
      })
    setOffset((old) => old + 1)
  }

  onMount(() => fetchMovies(true))

  return (
    <Show when={movies()} fallback={<p>Loading results...</p>}>
      {movies =>
        <>
          <List movies={movies()}/>
          {!end() ? <button class={style.load} onClick={() => fetchMovies(false)}>Load more</button>: null}
       </>}
    </Show>
  )
}

export default Search

const List: Component<{ movies: Array<Movie> }> = (props) => {
  return (
    <div class={style.results}>
      <For each={props.movies}>
        {movie => <MovieCard movie={movie}/>}
      </For>
    </div>
  )
}
