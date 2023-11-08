package qwikk.spring.movies.service

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import qwikk.spring.movies.model.Movie
import qwikk.spring.movies.repo.GenreRepository
import qwikk.spring.movies.repo.MovieRepository

@Service
class MovieService() {

    @Autowired
    lateinit var repository: MovieRepository
    @Autowired
    lateinit var genreRepository : GenreRepository

    fun findFilteredMovie(title: String?, genre: String?): List<Movie> {
        //TODO filter in either sql queries or using jpa specifications(figure out how to use them in kotlin)
        var movieList = repository.findAll()
        if (title != null) {
            movieList = movieList.filter { it.seriesTitle.contains(title, true) }
        }
        if (genre != null) {
            val genreList = genre.split(",")
            movieList = movieList.filter { it.genre.map { genre ->  genre.name }.containsAll(genreList) }
        }
        return movieList
    }
    fun findAll() = repository.findAllByOrderByImdbRatingDesc()
    fun findTop10Rated() = repository.findTop10Rated()
    fun findTop10Popular() = repository.findTop10Popular()
    fun findMovieId(id: Long): Movie = repository.findById(id).orElseThrow {
        NoSuchElementException("Movie ID:$id not found!")
    }
    fun findMovieTitle(title: String) = repository.findBySeriesTitle("%$title%")
    fun findAllGenres() = genreRepository.findAllGenres()
    fun findByGenre(genre: String): List<Movie> {
        val genreList = genre.split(",")
        return repository.findMoviesWithGenres(genreList, genreList.size)
    }
}