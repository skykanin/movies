import type { Component } from 'solid-js'
import type { Movie } from '../types'
import { createResource, Show } from 'solid-js'
import Scroller from '../components/scroller/Scroller'
import Search from '../components/search/Search'

import style from './Home.module.css'

const queryMovies: () => Promise<Movie[]> = () =>
  fetch('http://localhost:8080/api/movies/top10/rated')
    .then(async res => await res.json())

const Home: Component = () => {
  const [movies] = createResource(async () => await queryMovies())
  return (
    <div class={style.home}>
     <h1>Browse a collection of the top 1000 rated movies</h1>
     <Search />
     <div>
       <h2 class={style.scroller_title}>Top 10 Movies</h2>
       <Show when={!movies.loading} fallback={<div>Loading...</div>}>
         <Scroller movies={movies()!}/>
       </Show>
     </div>
   </div>
  )
}

export default Home
