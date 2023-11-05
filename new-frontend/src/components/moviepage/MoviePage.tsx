import { Show, createResource } from "solid-js";
import "./MoviePage.css";

const queryMovie: (id: number) => Promise<Movie> = (id) =>
  fetch(`http://localhost:8080/api/movies/id/${id}`)
    .then(res => res.json())

type Genre = {
  genreID: number;
  name: string;
};

type Movie = {
  movieID: number;
  posterLink: string;
  seriesTitle: string;
  releasedYear: number;
  certificate: string;
  runtime: string;
  genre: Genre[];
  imdbRating: number;
  overview: string;
  metaScore: number;
  director: string;
  star1: string;
  star2: string;
  star3: string;
  star4: string;
  noOfVotes: number;
  gross: string;
};

export default function MoviePage() {
  const [movie] = createResource(() => queryMovie(112));

  return (
    <Show when={!movie.loading} fallback={<div>Loading...</div>}>
      <div class="movie-card">
        <div class="movie-detail">
          <div class="movie-poster-container">
            <div class="movie-poster">
              <img src={movie()?.posterLink} alt="" />
            </div>
          </div>
          <div class="movie-text-container">
            <div class="movie-title">
              <h4>{movie()?.seriesTitle}</h4>
            </div>
            <div class="movie-description">
              <p>{movie()?.overview}</p>
            </div>
            <div class="movie-description">
              <p>
                {movie()?.genre.map((x) => x.name).join(", ")}
              </p>
            </div>
            <div class="movie-description">
              <p>Cast: {[movie()?.star1, movie()?.star2, movie()?.star3, movie()?.star4].join(", ")}</p>
            </div>
            <div class="movie-rating">
              <h4>{movie()?.imdbRating} / 10</h4>
            </div>
          </div>
        </div>
      </div>
    </Show>
  );
}
