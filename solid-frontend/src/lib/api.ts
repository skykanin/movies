import type { Movie } from '../types'

const baseUrl = "http://localhost:8080"

export const queryMovie = (id: number): Promise<Movie> =>
    fetch(`${baseUrl}/api/movies/id/${id}`)
        .then(async res => await res.json())

export interface Pagination { limit: string, offset: string }

export const queryMovies = (title?: string, paginate?: Pagination): Promise<Array<Movie>> => {
    const url =
        new URL("/api/movies/filter?", baseUrl).toString()
        + new URLSearchParams({
            title: title || '',
            page: paginate?.offset || '',
            size: paginate?.limit || ''
        }).toString()

    console.log("url:", url)

    return fetch(url).then(async res => await res.json())
}

export const queryTopRatedMovies = (): Promise<Array<Movie>> =>
    fetch('http://localhost:8080/api/movies/top10/rated')
        .then(async res => await res.json())

export const queryGenres = (): Promise<Array<string>> =>
    fetch("http://localhost:8080/api/movies/genre/all")
        .then(res => res.json())
