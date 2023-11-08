export interface Genre {
  genreID: number
  name: string
}

export interface Movie {
  movieID: number
  posterLink: string
  seriesTitle: string
  releasedYear: number
  certificate?: string
  runtime: string
  genre: Array<Genre>
  imdbRating: number
  overview: string
  metaScore: number
  director: string
  star1: string
  star2: string
  star3: string
  star4: string
  noOfVotes: number
  gross?: string
}
