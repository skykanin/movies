import type { Component } from "solid-js";
import type { Movie } from "../types";
import { createResource } from "solid-js";
import MovieCard from "../components/moviecard/MovieCard";

const queryMovie: (id: number) => Promise<Movie> = (id) =>
  fetch(`http://localhost:8080/api/movies/id/${id}`)
    .then(res => res.json())

const Home: Component = () => {
  const [data] = createResource(() => queryMovie(100));
  return (
   <div>
     <h2>Welcome to qwikk.movies</h2>
     <h4>Browse a collection of the top 1000 rated movies</h4>
     <MovieCard loading={data.loading} movie={data()}/>
   </div>
  )
}

export default Home;
