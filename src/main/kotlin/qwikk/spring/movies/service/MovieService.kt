package qwikk.spring.movies.service

import org.springframework.stereotype.Service
import qwikk.spring.movies.datasource.MovieDataSource
import qwikk.spring.movies.model.Movie

@Service
class MovieService(private val dataSource: MovieDataSource) {

    fun getMovies() = dataSource.retrieveMovies()
    fun getMovie(movieId: Int) = dataSource.retrieveMovie(movieId)
    fun addMovie(movie: Movie): Movie {
        dataSource.createMovie(movie)
        return movie
    }

}