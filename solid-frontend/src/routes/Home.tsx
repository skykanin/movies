import type { Component } from 'solid-js'
import type { Movie } from '../types'
import { createResource, Show } from 'solid-js'
import Scroller from '../components/scroller/Scroller'

const queryMovie: () => Promise<Movie[]> = async () =>
  await fetch('http://localhost:8080/api/movies/top10/rated')
    .then(async res => await res.json())

const Home: Component = () => {
  const [movies] = createResource(async () => await queryMovie())
  return (
   <div>
     <h2>Welcome to qwikk.movies</h2>
     <h4>Browse a collection of the top 1000 rated movies</h4>
     <Show when={!movies.loading} fallback={<div>Loading...</div>}>
       <Scroller movies={movies()!}/>
     </Show>
   </div>
  )
}

export default Home
