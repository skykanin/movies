import type { Component } from 'solid-js'
import { createEffect, createResource, createSignal, For, Suspense } from 'solid-js'
import { useSearchParams } from '@solidjs/router'
import { queryMovies } from '../lib/api'
import type { Movie } from '../types'

import MovieCard from '../components/moviecard/MovieCard'

import style from './Search.module.css'

const Search: Component = () => {
  const [params] = useSearchParams()
  const [offset, setOffset] = createSignal(0)
  const [end, setEnd] = createSignal(false)
  const fetchMovies = (offset: number, currentValue?: Array<Movie>): Promise<Array<Movie>> =>
    queryMovies(
      params.title,
      params.genres?.split(','),
      {limit: params.limit,
       offset: offset.toString()}
    ).then((newMovies) => {
         if (newMovies.length < parseInt(params.limit)) setEnd(true)
         return (currentValue ?? []).concat(newMovies)
      })

  const [movies] = createResource<Array<Movie>, number>(
      offset,
      (o, info) => fetchMovies(o, info?.value),
      { initialValue: [] }
  )

  createEffect(() => console.log(movies()))

  return (
    <Suspense fallback={<p>Loading results...</p>}>
      <List movies={movies()}/>
      {!end() ? <button class={style.load} onClick={() => setOffset(n => n + 1)}>Load more</button>: null}
    </Suspense>
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
