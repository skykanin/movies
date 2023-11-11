import type { Movie } from '../types'

export const queryMovie = (id: number): Promise<Movie> =>
    fetch(`http://localhost:8080/api/movies/id/${id}`)
        .then(async res => await res.json())

export const queryMovies = (title: number | null): Promise<Array<Movie>> =>
    fetch(`http://localhost:8080/api/movies/filter?title=${title}`)
        .then(async res => await res.json())

export const queryTopRatedMovies = (): Promise<Array<Movie>> =>
    fetch('http://localhost:8080/api/movies/top10/rated')
        .then(async res => await res.json())
